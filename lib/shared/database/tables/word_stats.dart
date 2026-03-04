import 'package:drift/drift.dart';

import 'package:voca/shared/database/tables/words.dart';

/// 단어별 필름 확인 횟수(peek_count) 기록
class WordStats extends Table {
  TextColumn get wordId => text().references(Words, #id)();
  IntColumn get peekCount => integer().withDefault(const Constant(0))();
  DateTimeColumn get lastPeekedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {wordId};
}
