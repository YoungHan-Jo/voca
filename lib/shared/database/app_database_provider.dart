import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/shared/database/app_database.dart';

final appDatabaseProvider = FutureProvider<AppDatabase>((ref) async {
  final database = AppDatabase();

  // LazyDatabase는 첫 쿼리 시에만 연결을 열고 마이그레이션을 실행한다.
  // 쿼리를 한 번 실행해 DB 파일 생성 및 onCreate(테이블 생성·시딩)을 보장한다.
  await database.customStatement('SELECT 1');

  ref.keepAlive();

  ref.onDispose(() async {
    debugPrint('Closing database...');
    await database.close();
  });

  return database;
});
