import 'package:flutter/material.dart';

class MainTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
    scaffoldBackgroundColor: Colors.blueAccent,
    cardTheme: CardThemeData(color: Colors.white.withValues(alpha: 0.2)),
   
  );
}
