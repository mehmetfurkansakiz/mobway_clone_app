import 'package:flutter/material.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
    this.backgroundColor = LightColors.finishFiordGreen,
    this.textColor = LightColors.pureWhite,
    this.fontSize = 16,
    this.iconSize = 40,
    this.isColumn = false,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool isColumn;
  final IconData icon;
  final double iconSize;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          minimumSize: const Size.fromHeight(80),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onPressed,
        child: Flex(
          direction: isColumn ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: iconSize),
            if (!isColumn) const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
