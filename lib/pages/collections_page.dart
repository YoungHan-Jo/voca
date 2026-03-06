import 'package:flutter/material.dart';

import 'package:voca/shared/constants/colors.dart';
import 'package:voca/shared/ui/voca_app_bar.dart';

/// 보관함 탭 화면 (Placeholder).
class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocaAppBar(title: 'Collections'),
      body: Container(
        color: VocaColors.background,
        child: const Center(
          child: Text(
            'Collections Page',
            style: TextStyle(color: VocaColors.fontWhite),
          ),
        ),
      ),
    );
  }
}
