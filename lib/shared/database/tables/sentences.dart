import 'package:drift/drift.dart';

import 'package:voca/shared/database/tables/words.dart';

/// 예문 마스터 테이블 (category: BIZ, DAILY, USER). id는 UUID(Text) 사용.
class Sentences extends Table {
  TextColumn get id => text()();
  TextColumn get wordId => text().references(Words, #id)();
  TextColumn get category => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {id};
}
