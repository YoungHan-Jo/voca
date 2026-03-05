import 'package:voca/shared/preferences/settings/settings_repository.dart';

/// 학습 커리큘럼 구분 (저장/API용 문자열과 매핑).
enum Curriculum {
  // A1영어 / 9만번대 포함
  common('common'),

  // A2 영어 / 9만번대 제외
  basic('basic'),
  // B1 영어 / 9만번대 제외
  daily('daily'),
  // B2 영어 / 9만번대 제외
  business('business'),
  // C1 영어 / 9만번대 포함
  advanced('advanced'),

  // TOEIC 600+ / 9만번대 포함
  toeic600('toeic600'),
  // TOEIC 700+ / 9만번대 포함
  toeic700('toeic700'),
  // TOEIC 800+ / 9만번대 포함
  toeic800('toeic800'),
  // TOEIC 900+ / 9만번대 포함
  toeic900('toeic900');

  const Curriculum(this.value);
  final String value;

  /// SharedPreferences/DB 등에 저장된 문자열로부터 복원.
  static Curriculum fromString(String? s) {
    if (s == null || s.isEmpty) return defaultCurrentCurriculum;
    return Curriculum.values.firstWhere(
      (e) => e.value == s,
      orElse: () => defaultCurrentCurriculum,
    );
  }
}
