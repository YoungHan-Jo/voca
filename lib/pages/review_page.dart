import 'package:flutter/material.dart';

import 'package:voca/shared/constants/colors.dart';
import 'package:voca/shared/ui/voca_app_bar.dart';

/// 복습 탭 화면 (Placeholder).
class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocaAppBar(title: 'Review'),
      body: Container(
        color: VocaColors.background,
        child: const Center(
          child: Text(
            'Review Page',
            style: TextStyle(color: VocaColors.fontWhite),
          ),
        ),
      ),
    );
  }
}
