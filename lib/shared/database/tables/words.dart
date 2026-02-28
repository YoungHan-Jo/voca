import 'package:drift/drift.dart';

/// 단어 마스터 테이블
class Words extends Table {
  TextColumn get id => text()();
  TextColumn get word => text()();
  TextColumn get wordClass => text()();
  TextColumn get level => text()();
  IntColumn get sfiRank => integer()();
  TextColumn get past => text().nullable()();
  TextColumn get pastParticiple => text().nullable()();
  TextColumn get plural => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
