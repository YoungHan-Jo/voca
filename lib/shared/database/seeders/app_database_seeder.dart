import 'package:csv/csv.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:uuid/uuid.dart';

import 'package:voca/shared/database/app_database.dart';

const _csvAssetPath = 'assets/data/oxford-5000words.csv';
const _chunkSize = 500;
const _emptySfiRank = 99999;

/// AppDatabase 초기 시딩(CSV → words 등)을 담당하는 시더.
class AppDatabaseSeeder {
  AppDatabaseSeeder._();

  /// DB에 단어가 없으면 CSV 에셋을 로드해 4개 테이블에 시딩한다.
  static Future<void> runCsvMigrationIfNeeded(AppDatabase db) async {
    final existing = await db.select(db.words).get();
    if (existing.isNotEmpty) {
      debugPrint(
        'csv_seeder: words already exist (${existing.length}), skip migration',
      );
      return;
    }

    String csvContent;
    try {
      csvContent = await rootBundle.loadString(_csvAssetPath);
    } catch (e, st) {
      debugPrint('csv_seeder: failed to load CSV $_csvAssetPath: $e');
      debugPrint('$st');
      return;
    }

    debugPrint('csv_seeder: parsing CSV...');
    final rows = const CsvToListConverter(
      shouldParseNumbers: false,
    ).convert(csvContent.trim());
    if (rows.isEmpty) {
      debugPrint('csv_seeder: no rows');
      return;
    }

    final header = rows.first.map((e) => e.toString().toLowerCase()).toList();
    final dataRows = rows.skip(1).toList();

    final idIdx = _indexOf(header, 'id');
    final wordIdx = _indexOf(header, 'word');
    final classIdx = _indexOf(header, 'class');
    final levelIdx = _indexOf(header, 'level');
    final pastIdx = _indexOf(header, 'past');
    final pastParticipleIdx = _indexOf(header, 'past_participle');
    final pluralIdx = _indexOf(header, 'plural');
    final sfiRankIdx = _indexOf(header, 'sfi_rank');
    final meaningKoIdx = _indexOf(header, 'meaning_ko');
    final meaningJaIdx = _indexOf(header, 'meaning_ja');
    final exBizIdx = _indexOf(header, 'ex_biz');
    final exBizKoIdx = _indexOf(header, 'ex_biz_ko');
    final exBizJaIdx = _indexOf(header, 'ex_biz_ja');
    final exDailyIdx = _indexOf(header, 'ex_daily');
    final exDailyKoIdx = _indexOf(header, 'ex_daily_ko');
    final exDailyJaIdx = _indexOf(header, 'ex_daily_ja');

    final words = <WordsCompanion>[];
    final wordMeanings = <WordMeaningsCompanion>[];
    final sentences = <SentencesCompanion>[];
    final sentenceTranslations = <SentenceTranslationsCompanion>[];
    const uuid = Uuid();

    for (var i = 0; i < dataRows.length; i++) {
      final row = dataRows[i];
      String cell(int idx) =>
          idx >= 0 && idx < row.length ? row[idx].toString().trim() : '';

      final id = cell(idIdx);
      if (id.isEmpty) continue;

      final word = cell(wordIdx);
      final wordClass = cell(classIdx);
      final level = cell(levelIdx);
      final sfiRankStr = cell(sfiRankIdx);
      final sfiRank = int.tryParse(sfiRankStr) ?? _emptySfiRank;
      final pastStr = cell(pastIdx);
      final pastParticipleStr = cell(pastParticipleIdx);
      final pluralStr = cell(pluralIdx);

      words.add(
        WordsCompanion.insert(
          id: id,
          word: word,
          wordClass: wordClass,
          level: level,
          sfiRank: sfiRank,
          past: pastStr.isEmpty ? const Value(null) : Value(pastStr),
          pastParticiple: pastParticipleStr.isEmpty
              ? const Value(null)
              : Value(pastParticipleStr),
          plural: pluralStr.isEmpty ? const Value(null) : Value(pluralStr),
        ),
      );

      final meaningKo = cell(meaningKoIdx);
      final meaningJa = cell(meaningJaIdx);
      if (meaningKo.isEmpty) {
        debugPrint(
          'csv_seeder: skip word_meaning row wordId=$id lang=ko (meaning_ko empty)',
        );
      } else {
        wordMeanings.add(
          WordMeaningsCompanion.insert(
            wordId: id,
            lang: 'ko',
            meaning: meaningKo,
          ),
        );
      }
      if (meaningJa.isEmpty) {
        debugPrint(
          'csv_seeder: skip word_meaning row wordId=$id lang=ja (meaning_ja empty)',
        );
      } else {
        wordMeanings.add(
          WordMeaningsCompanion.insert(
            wordId: id,
            lang: 'ja',
            meaning: meaningJa,
          ),
        );
      }

      final exBiz = cell(exBizIdx);
      final exDaily = cell(exDailyIdx);
      final exBizKo = cell(exBizKoIdx);
      final exBizJa = cell(exBizJaIdx);
      final exDailyKo = cell(exDailyKoIdx);
      final exDailyJa = cell(exDailyJaIdx);

      if (exBiz.isNotEmpty) {
        final sentenceId = uuid.v4();
        sentences.add(
          SentencesCompanion.insert(
            id: sentenceId,
            wordId: id,
            category: 'BIZ',
            content: exBiz,
          ),
        );
        if (exBizKo.isEmpty) {
          debugPrint(
            'csv_seeder: skip sentence_translation sentenceId=$sentenceId lang=ko (ex_biz_ko empty)',
          );
        } else {
          sentenceTranslations.add(
            SentenceTranslationsCompanion.insert(
              sentenceId: sentenceId,
              lang: 'ko',
              translation: exBizKo,
            ),
          );
        }
        if (exBizJa.isEmpty) {
          debugPrint(
            'csv_seeder: skip sentence_translation sentenceId=$sentenceId lang=ja (ex_biz_ja empty)',
          );
        } else {
          sentenceTranslations.add(
            SentenceTranslationsCompanion.insert(
              sentenceId: sentenceId,
              lang: 'ja',
              translation: exBizJa,
            ),
          );
        }
      }
      if (exDaily.isNotEmpty) {
        final sentenceId = uuid.v4();
        sentences.add(
          SentencesCompanion.insert(
            id: sentenceId,
            wordId: id,
            category: 'DAILY',
            content: exDaily,
          ),
        );
        if (exDailyKo.isEmpty) {
          debugPrint(
            'csv_seeder: skip sentence_translation sentenceId=$sentenceId lang=ko (ex_daily_ko empty)',
          );
        } else {
          sentenceTranslations.add(
            SentenceTranslationsCompanion.insert(
              sentenceId: sentenceId,
              lang: 'ko',
              translation: exDailyKo,
            ),
          );
        }
        if (exDailyJa.isEmpty) {
          debugPrint(
            'csv_seeder: skip sentence_translation sentenceId=$sentenceId lang=ja (ex_daily_ja empty)',
          );
        } else {
          sentenceTranslations.add(
            SentenceTranslationsCompanion.insert(
              sentenceId: sentenceId,
              lang: 'ja',
              translation: exDailyJa,
            ),
          );
        }
      }
    }

    debugPrint(
      'csv_seeder: parsed words=${words.length} word_meanings=${wordMeanings.length} sentences=${sentences.length} sentence_translations=${sentenceTranslations.length}',
    );

    for (var start = 0; start < words.length; start += _chunkSize) {
      final end = (start + _chunkSize).clamp(0, words.length);
      final chunk = words.sublist(start, end);
      await db.batch((b) {
        b.insertAll(db.words, chunk);
      });
      debugPrint('csv_seeder: inserted words $start..$end');
    }
    for (var start = 0; start < wordMeanings.length; start += _chunkSize) {
      final end = (start + _chunkSize).clamp(0, wordMeanings.length);
      final chunk = wordMeanings.sublist(start, end);
      await db.batch((b) {
        b.insertAll(db.wordMeanings, chunk);
      });
      debugPrint('csv_seeder: inserted word_meanings $start..$end');
    }
    for (var start = 0; start < sentences.length; start += _chunkSize) {
      final end = (start + _chunkSize).clamp(0, sentences.length);
      final chunk = sentences.sublist(start, end);
      await db.batch((b) {
        b.insertAll(db.sentences, chunk);
      });
      debugPrint('csv_seeder: inserted sentences $start..$end');
    }
    for (
      var start = 0;
      start < sentenceTranslations.length;
      start += _chunkSize
    ) {
      final end = (start + _chunkSize).clamp(0, sentenceTranslations.length);
      final chunk = sentenceTranslations.sublist(start, end);
      await db.batch((b) {
        b.insertAll(db.sentenceTranslations, chunk);
      });
      debugPrint('csv_seeder: inserted sentence_translations $start..$end');
    }

    debugPrint('csv_seeder: migration done');
  }

  static int _indexOf(List<String> header, String name) {
    final i = header.indexOf(name);
    return i >= 0 ? i : -1;
  }
}
