import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:voca/shared/constants/curriculum.dart';
import 'package:voca/shared/preferences/settings/settings_repository.dart';

void main() {
  late SharedPreferences prefs;
  late SettingsRepository repo;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    prefs = await SharedPreferences.getInstance();
    repo = SettingsRepository(prefs);
  });

  group('SettingsRepository', () {
    group('getWordCountPerCollection', () {
      test('저장된 값이 없으면 기본값을 반환한다', () {
        expect(repo.getWordCountPerCollection(), 20);
      });

      test('저장된 값이 있으면 해당 값을 반환한다', () async {
        await repo.setWordCountPerCollection(50);
        expect(repo.getWordCountPerCollection(), 50);
      });
    });

    group('setWordCountPerCollection', () {
      test('값을 저장한 뒤 getWordCountPerCollection으로 읽을 수 있다', () async {
        await repo.setWordCountPerCollection(30);
        expect(repo.getWordCountPerCollection(), 30);
      });
    });

    group('getCurrentCurriculum', () {
      test('저장된 값이 없으면 common을 반환한다', () {
        expect(repo.getCurrentCurriculum(), Curriculum.common);
      });

      test('저장된 값이 있으면 해당 커리큘럼을 반환한다', () async {
        await repo.setCurrentCurriculum(Curriculum.toeic700);
        expect(repo.getCurrentCurriculum(), Curriculum.toeic700);
      });
    });

    group('setCurrentCurriculum', () {
      test('값을 저장한 뒤 getCurrentCurriculum으로 읽을 수 있다', () async {
        await repo.setCurrentCurriculum(Curriculum.daily);
        expect(repo.getCurrentCurriculum(), Curriculum.daily);
      });
    });
  });
}
