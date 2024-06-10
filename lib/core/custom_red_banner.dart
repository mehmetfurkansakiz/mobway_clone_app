import 'package:flutter/material.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class CustomRedBanner extends StatelessWidget {
  final String title;

  const CustomRedBanner({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: LightColors.romeoRed,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(color: LightColors.pureWhite, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
