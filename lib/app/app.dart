import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/app/view/main_screen.dart';
import 'package:voca/shared/database/app_database_provider.dart';

class RootWidget extends ConsumerStatefulWidget {
  const RootWidget({super.key});

  @override
  ConsumerState<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends ConsumerState<RootWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(appDatabaseProvider.future);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voca',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}
