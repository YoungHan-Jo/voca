import 'package:drift/drift.dart';

import 'package:voca/shared/database/tables/collections.dart';
import 'package:voca/shared/database/tables/words.dart';

/// 컬렉션-단어 연결 테이블 (정렬 순서 포함)
class CollectionItems extends Table {
  TextColumn get collectionId => text().references(Collections, #id)();
  TextColumn get wordId => text().references(Words, #id)();
  IntColumn get sortOrder => integer()();

  @override
  Set<Column> get primaryKey => {collectionId, wordId};
}
