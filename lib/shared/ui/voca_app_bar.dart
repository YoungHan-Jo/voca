import 'package:flutter/material.dart';
import 'package:voca/shared/constants/colors.dart';

/// 앱 전역에서 공통으로 사용하는 AppBar.
class VocaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VocaAppBar({super.key, this.title});

  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(offset: Offset(0, 1), color: Colors.grey.withAlpha(20)),
        ],
      ),
      child: AppBar(
        title: _buildTitle(),
        centerTitle: false,
        titleSpacing: 25,
        backgroundColor: VocaColors.headerFooter,
      ),
    );
  }

  Widget _buildTitle() {
    final title = this.title;

    if (title == null) {
      return const SizedBox.shrink();
    }

    return Text(
      title,
      style: const TextStyle(
        color: VocaColors.fontWhite,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    );
  }
}
