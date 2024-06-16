import 'package:flutter/material.dart';

class IconButtonModel {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  IconButtonModel({
    required this.text,
    required this.icon,
    required this.onPressed,
  });
}
