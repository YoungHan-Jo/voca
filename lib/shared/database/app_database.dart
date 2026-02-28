import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:voca/shared/database/tables/sentence_translations.dart';
import 'package:voca/shared/database/tables/sentences.dart';
import 'package:voca/shared/database/tables/word_meanings.dart';
import 'package:voca/shared/database/tables/words.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Words, WordMeanings, Sentences, SentenceTranslations])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));

    debugPrint('📂 Database path: ${file.path}');

    return NativeDatabase.createInBackground(file, logStatements: kDebugMode);
  });
}
