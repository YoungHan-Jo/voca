import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:voca/shared/constants/curriculum.dart';
import 'package:voca/shared/preferences/settings/settings_repository.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(defaultWordCountPerCollection) int wordCountPerCollection,
    @Default(defaultCurrentCurriculum) Curriculum currentCurriculum,
  }) = _SettingsState;
}
