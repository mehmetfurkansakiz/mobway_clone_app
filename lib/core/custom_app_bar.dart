import 'package:flutter/material.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title = 'Mobway'});

  final String title;

  @override
  Widget build(BuildContext context) {
    final appBarTheme = Theme.of(context).appBarTheme;

    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: LightColors.pureWhite, fontSize: 36, fontWeight: FontWeight.bold),
      ),
      centerTitle: appBarTheme.centerTitle,
      elevation: appBarTheme.elevation,
      systemOverlayStyle: appBarTheme.systemOverlayStyle,
      shape: appBarTheme.shape,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              LightColors.turquoiseBlue,
              LightColors.seaGreen,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
