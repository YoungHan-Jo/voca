import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 현재 하단 탭 인덱스 (0: 학습, 1: 보관함, 2: 복습, 3: 설정).
final navigationProvider = StateProvider<int>((ref) => 0);
