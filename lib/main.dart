import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_theme.dart';

import 'screen/property/app_entry/app_entry_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AppEntryScreen(),
    );
  }
}
