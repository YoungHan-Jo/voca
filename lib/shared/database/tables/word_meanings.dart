import 'package:drift/drift.dart';

import 'package:voca/shared/database/tables/words.dart';

/// 단어 뜻 테이블 (다국어: ko/ja). lang: 'ko' | 'ja'
@TableIndex(name: 'idx_word_meanings_lang', columns: {#lang})
class WordMeanings extends Table {
  TextColumn get wordId => text().references(Words, #id)();
  TextColumn get lang => text()();
  TextColumn get meaning => text()();

  @override
  Set<Column> get primaryKey => {wordId, lang};
}
