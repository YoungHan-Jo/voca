import 'package:flutter/material.dart';

import 'package:voca/shared/ui/voca_app_bar.dart';

/// 보관함 탭 화면 (Placeholder).
class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocaAppBar(title: '보관함'),
      body: const Center(child: Text('Collections Page')),
    );
  }
}
