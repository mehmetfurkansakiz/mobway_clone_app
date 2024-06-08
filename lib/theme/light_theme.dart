import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  final lightColors = LightColors();

  late ThemeData theme; // debug modda isen late final kullanmamalısın degisiklikleri görmek için final kaldır

  LightTheme() {
    theme = ThemeData(
        scaffoldBackgroundColor: LightColors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        ));
  }
}

class LightColors {
  static const Color white = Color.fromARGB(255, 250, 250, 250);
  static const Color seaGreen = Color.fromARGB(255, 0, 161, 157);
  static const Color deepSeaBlue = Color.fromARGB(255, 0, 38, 66);
  static const Color oceanBlue = Color.fromARGB(255, 1, 58, 99);
  static const Color pureWhite = Color.fromARGB(255, 255, 255, 255);
  static const Color turquoiseBlue = Color.fromARGB(255, 2, 128, 144);
  static const Color romeoRed = Color.fromARGB(255, 167, 36, 60);
  static const Color grappleGreen = Color.fromARGB(255, 64, 184, 177);
  static const Color steelyGrey = Color.fromARGB(255, 141, 154, 154);
  static const Color finishFiordGreen = Color.fromARGB(255, 89, 177, 188);
}
