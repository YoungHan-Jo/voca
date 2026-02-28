import 'package:drift/drift.dart';

import 'package:voca/shared/database/tables/sentences.dart';

/// 예문 해석 테이블 (다국어: ko/ja). sentenceId는 Sentences.id(UUID) 참조. lang: 'ko' | 'ja'
@TableIndex(name: 'idx_sentence_translations_lang', columns: {#lang})
class SentenceTranslations extends Table {
  TextColumn get sentenceId => text().references(Sentences, #id)();
  TextColumn get lang => text()();
  TextColumn get translation => text()();

  @override
  Set<Column> get primaryKey => {sentenceId, lang};
}
