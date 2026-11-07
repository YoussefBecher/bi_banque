import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/dashboard/theme_preview_screen.dart';

class BiBanqueApp extends StatelessWidget {
  const BiBanqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BI Banque',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      home: const ThemePreviewScreen(),
    );
  }
}