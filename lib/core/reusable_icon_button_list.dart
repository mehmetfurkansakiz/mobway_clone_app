import 'package:flutter/material.dart';
import 'package:mobway_clone_app/service/icon_button_model.dart';

class ReusableIconButtonList extends StatelessWidget {
  const ReusableIconButtonList({super.key, required this.buttons, required this.buttonWidgetBuilder});

  final List<IconButtonModel> buttons;
  final Widget Function(String text, VoidCallback onPressed, IconData icon) buttonWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: buttons.length,
          itemBuilder: (context, index) {
            final button = buttons[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: buttonWidgetBuilder(
                button.text,
                button.onPressed,
                button.icon,
              ),
            );
          },
        ),
      ),
    );
  }
}
