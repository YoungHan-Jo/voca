import 'package:drift/drift.dart';

/// 학습 세트·유저 컬렉션 테이블 (학습 세트 및 유저 관리)
class Collections extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get category => text()();
  TextColumn get curriculum => text()();
  IntColumn get setIndex => integer()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
