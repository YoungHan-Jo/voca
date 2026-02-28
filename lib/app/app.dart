import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/app/app_database_provider.dart';

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
      ref.read(appDatabaseProvider).customSelect('SELECT 1').get();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voca',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(body: Center(child: Text('Voca'))),
    );
  }
}
