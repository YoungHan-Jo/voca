import 'package:flutter/material.dart';

/// 앱 공통 AppBar. 타이틀·액션 등을 선택적으로 지정.
class VocaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VocaAppBar({super.key, this.title, this.actions});

  final String? title;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title ?? 'Voca'), actions: actions);
  }
}
