import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    onBackground: Colors.black,
  ),
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.grey.shade500),
  ),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Colors.black,
    onBackground: Colors.white,
  ),
  useMaterial3: true,
);