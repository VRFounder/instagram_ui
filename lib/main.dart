import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      home: const HomeScreen(),
    );
  }
}
