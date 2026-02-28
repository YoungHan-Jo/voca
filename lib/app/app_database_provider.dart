import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/shared/database/app_database.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) => AppDatabase());
