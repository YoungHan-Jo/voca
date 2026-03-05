import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/app/provider/navigation_provider.dart';
import 'package:voca/pages/collections_page.dart';
import 'package:voca/pages/review_page.dart';
import 'package:voca/pages/settings_page.dart';
import 'package:voca/pages/study_page.dart';

/// 앱 메인 화면. Scaffold + BottomNavigationBar로 4개 탭 구성.
class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  static const _tabs = [
    (label: 'Study', icon: Icons.menu_book),
    (label: 'Collections', icon: Icons.folder),
    (label: 'Review', icon: Icons.replay),
    (label: 'Settings', icon: Icons.settings),
  ];

  static const _pages = [
    StudyPage(),
    CollectionsPage(),
    ReviewPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationProvider);

    return Scaffold(
      body: IndexedStack(index: index, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => ref.read(navigationProvider.notifier).state = i,
        type: BottomNavigationBarType.fixed,
        items: [
          for (var i = 0; i < _tabs.length; i++)
            BottomNavigationBarItem(
              icon: Icon(_tabs[i].icon),
              label: _tabs[i].label,
            ),
        ],
      ),
    );
  }
}
