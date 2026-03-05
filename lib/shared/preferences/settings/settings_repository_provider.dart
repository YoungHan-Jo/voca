import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/shared/preferences/settings/settings_repository.dart';
import 'package:voca/shared/preferences/shared_preferences_provider.dart';

/// [SettingsRepository] 인스턴스를 제공하는 Provider.
final settingsRepositoryProvider = FutureProvider<SettingsRepository>((
  ref,
) async {
  final prefs = await ref.read(sharedPreferencesProvider.future);
  return SettingsRepository(prefs);
});
