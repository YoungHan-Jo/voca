import 'package:flutter/material.dart';

import 'package:voca/shared/ui/voca_app_bar.dart';

/// 학습 탭 화면 (Placeholder).
class StudyPage extends StatelessWidget {
  const StudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocaAppBar(title: '학습'),
      body: const Center(child: Text('Study Page')),
    );
  }
}
