import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_drawer.dart';
import 'package:mobway_clone_app/core/custom_icon_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/depo_yonetimi_screen.dart';
import 'package:mobway_clone_app/finans_yonetimi_screen.dart';
import 'package:mobway_clone_app/service/icon_button_model.dart';
import 'package:mobway_clone_app/siparis_yonetimi_screen.dart';
import 'package:mobway_clone_app/urun_yonetimi_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconButtonModel> menuButtons = [
      IconButtonModel(
        text: 'Depo Yönetimi',
        icon: Icons.warehouse_outlined,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DepoYonetimiScreen()),
          );
        },
      ),
      IconButtonModel(
          text: 'Ürün Yönetimi',
          icon: Icons.inventory_2_outlined,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const UrunYonetimiScreen()),
            );
          }),
      IconButtonModel(
        text: 'Sipariş Yönetimi',
        icon: Icons.shopping_cart_outlined,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const SiparisYonetimiScreen()),
          );
        },
      ),
      IconButtonModel(
        text: 'Finans Yönetimi',
        icon: Icons.attach_money_outlined,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const FinansYonetimiScreen()),
          );
        },
      )
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: Column(
        children: [
          const CustomRedBanner(
            title: 'MENÜ',
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemCount: menuButtons.length,
              itemBuilder: (context, index) {
                final menuButton = menuButtons[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: CustomIconButton(
                    text: menuButton.text,
                    icon: menuButton.icon,
                    onPressed: menuButton.onPressed,
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
