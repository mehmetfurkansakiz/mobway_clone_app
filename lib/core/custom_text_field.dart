import 'package:flutter/material.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.icon, required this.obscureText, this.autofillHints});

  final String hintText;
  final IconData icon;
  final bool obscureText;
  final List<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: autofillHints,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: LightColors.grappleGreen),
        labelStyle: TextStyle(color: LightColors.steelyGrey, fontWeight: FontWeight.bold),
        filled: true,
        fillColor: LightColors.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
