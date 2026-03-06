import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/app/provider/navigation_provider.dart';
import 'package:voca/pages/collections_page.dart';
import 'package:voca/pages/review_page.dart';
import 'package:voca/pages/settings_page.dart';
import 'package:voca/pages/study_page.dart';
import 'package:voca/shared/constants/colors.dart';

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
      bottomNavigationBar: Container(
        color: VocaColors.headerFooter,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < _tabs.length; i++)
                _NavItem(
                  label: _tabs[i].label,
                  icon: _tabs[i].icon,
                  selected: index == i,
                  onTap: () => ref.read(navigationProvider.notifier).state = i,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 선택 시 상단에 인디케이터 바가 있는 하단 탭 한 개.
class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 2,
              width: 48,
              decoration: BoxDecoration(
                color: selected ? VocaColors.icon : Colors.transparent,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 8),
            Icon(
              icon,
              size: 24,
              color: selected ? VocaColors.icon : VocaColors.iconInactive,
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: selected ? VocaColors.icon : VocaColors.iconInactive,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
