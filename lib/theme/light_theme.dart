import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  final _lightColors = _LightColors();

  late ThemeData theme; // debug modda isen late final kullanmamalısın degisiklikleri görmek için final kaldır

  LightTheme() {
    theme = ThemeData(
      scaffoldBackgroundColor: _lightColors._white.withOpacity(0.9),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
      ),
    );
  }
}

class _LightColors {
  final Color _white = const Color.fromARGB(255, 250, 250, 250);
  final Color _seaGreen = const Color.fromARGB(255, 0, 161, 157);
  final Color _deepSeaBlue = const Color.fromARGB(255, 0, 38, 66);
  final Color _oceanBlue = const Color.fromARGB(255, 1, 58, 99);
  final Color _pureWhite = const Color.fromARGB(255, 255, 255, 255);
  final Color _turquoiseBlue = const Color.fromARGB(255, 2, 128, 144);
  final Color _romeoRed = const Color.fromARGB(255, 167, 36, 60);
  final Color _grappleGreen = const Color.fromARGB(255, 64, 184, 177);
}
