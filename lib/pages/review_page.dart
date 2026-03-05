import 'package:flutter/material.dart';

import 'package:voca/shared/ui/voca_app_bar.dart';

/// 복습 탭 화면 (Placeholder).
class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocaAppBar(title: '복습'),
      body: const Center(child: Text('Review Page')),
    );
  }
}
