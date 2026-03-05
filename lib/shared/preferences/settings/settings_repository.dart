import 'package:shared_preferences/shared_preferences.dart';

import 'package:voca/shared/constants/curriculum.dart';

const _keyWordCountPerCollection = 'word_count_per_collection';
const _keyCurrentCurriculum = 'current_curriculum';

const defaultWordCountPerCollection = 20;
const defaultCurrentCurriculum = Curriculum.common;

/// 설정값(컬렉션당 단어 수, 현재 커리큘럼)의 영속화를 담당하는 Repository.
class SettingsRepository {
  SettingsRepository(this._prefs);

  final SharedPreferences _prefs;

  int getWordCountPerCollection() =>
      _prefs.getInt(_keyWordCountPerCollection) ??
      defaultWordCountPerCollection;

  Future<void> setWordCountPerCollection(int value) async {
    await _prefs.setInt(_keyWordCountPerCollection, value);
  }

  Curriculum getCurrentCurriculum() =>
      Curriculum.fromString(_prefs.getString(_keyCurrentCurriculum));

  Future<void> setCurrentCurriculum(Curriculum value) async {
    await _prefs.setString(_keyCurrentCurriculum, value.value);
  }
}
