import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:voca/shared/database/tables/collection_items.dart';
import 'package:voca/shared/database/tables/collections.dart';
import 'package:voca/shared/database/tables/sentence_translations.dart';
import 'package:voca/shared/database/tables/sentences.dart';
import 'package:voca/shared/database/tables/word_meanings.dart';
import 'package:voca/shared/database/tables/word_stats.dart';
import 'package:voca/shared/database/tables/words.dart';
import 'package:voca/shared/database/seeders/app_database_seeder.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Words,
    WordMeanings,
    Sentences,
    SentenceTranslations,
    Collections,
    CollectionItems,
    WordStats,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    // DB파일이 처음 만들어 질 때 한 번 실행됨
    onCreate: (Migrator m) async {
      await m.createAll(); // DB 생성

      await AppDatabaseSeeder.runCsvMigrationIfNeeded(this);
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));

    debugPrint('📂 Database path: ${file.path}');

    return NativeDatabase.createInBackground(file, logStatements: kDebugMode);
  });
}
