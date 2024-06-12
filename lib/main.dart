import 'package:flutter/material.dart';
import 'package:mobway_clone_app/login_screen.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final LightTheme lightTheme = LightTheme();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme.theme,
      home: LoginScreen(),
    );
  }
}
