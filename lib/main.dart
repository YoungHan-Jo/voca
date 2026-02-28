import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voca/app/app.dart' as app;

void main() {
  runApp(const ProviderScope(child: app.RootWidget()));
}
