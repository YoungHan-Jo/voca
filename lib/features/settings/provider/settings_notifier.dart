import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:voca/features/settings/provider/settings_state.dart';
import 'package:voca/shared/constants/curriculum.dart';
import 'package:voca/shared/preferences/settings/settings_repository_provider.dart';

part 'settings_notifier.g.dart';

@riverpod
class SettingsNotifier extends _$SettingsNotifier {
  @override
  Future<SettingsState> build() async {
    final repo = await ref.watch(settingsRepositoryProvider.future);
    return SettingsState(
      wordCountPerCollection: repo.getWordCountPerCollection(),
      currentCurriculum: repo.getCurrentCurriculum(),
    );
  }

  Future<void> setWordCountPerCollection(int value) async {
    final current = state.value ?? const SettingsState();
    final repo = await ref.read(settingsRepositoryProvider.future);
    await repo.setWordCountPerCollection(value);
    state = AsyncData(current.copyWith(wordCountPerCollection: value));
  }

  Future<void> setCurrentCurriculum(Curriculum value) async {
    final current = state.value ?? const SettingsState();
    final repo = await ref.read(settingsRepositoryProvider.future);
    await repo.setCurrentCurriculum(value);
    state = AsyncData(current.copyWith(currentCurriculum: value));
  }
}
