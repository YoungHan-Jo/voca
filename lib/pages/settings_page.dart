import 'package:flutter/material.dart';

import 'package:voca/shared/ui/voca_app_bar.dart';

/// 설정 탭 화면 (Placeholder).
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VocaAppBar(title: '설정'),
      body: const Center(child: Text('Settings Page')),
    );
  }
}
