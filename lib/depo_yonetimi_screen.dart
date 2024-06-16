import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_icon_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/service/icon_button_model.dart';

class DepoYonetimiScreen extends StatelessWidget {
  const DepoYonetimiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy Depo Yönetimi Button List
    final List<IconButtonModel> depoYonetimiButtons = [
      IconButtonModel(
        text: 'Depo Sevk',
        icon: Icons.forklift,
        onPressed: () {
          print('Pressed to Depo Sevk!');
        },
      ),
      IconButtonModel(
        text: 'Sayım İşlemleri',
        icon: Icons.calculate_outlined,
        onPressed: () {
          print('Pressed to Sayım İşlemleri!');
        },
      ),
      IconButtonModel(
        text: 'Depo Sevk İstek',
        icon: Icons.warehouse_outlined,
        onPressed: () {
          print('Pressed to Depo Sevk İstek!');
        },
      ),
      IconButtonModel(
        text: 'Depo İstek İade',
        icon: Icons.undo_outlined,
        onPressed: () {
          print('Pressed to Depo İstek İade!');
        },
      ),
      IconButtonModel(
        text: 'Ürün Toplama',
        icon: Icons.inventory_outlined,
        onPressed: () {
          print('Pressed to Ürün Toplama!');
        },
      ),
    ];

    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          CustomRedBanner(title: 'Depo Yönetimi'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: depoYonetimiButtons.length,
                itemBuilder: (context, index) {
                  final depoYonetimiButton = depoYonetimiButtons[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: CustomIconButton(
                      text: depoYonetimiButton.text,
                      onPressed: depoYonetimiButton.onPressed,
                      icon: depoYonetimiButton.icon,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
