import 'package:flutter/material.dart';
import 'package:voca/shared/constants/colors.dart';

import 'package:voca/shared/ui/voca_app_bar.dart';

/// 학습 탭 화면 (Placeholder).
class StudyPage extends StatelessWidget {
  const StudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocaAppBar(title: 'Study'),
      body: Container(
        color: VocaColors.background,
        child: const Center(
          child: Text(
            'Study Page',
            style: TextStyle(color: VocaColors.fontWhite),
          ),
        ),
      ),
    );
  }
}
