import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          CustomRedBanner(
            title: 'MENÜ',
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                _menuButton('Depo Yönetimi', Icons.warehouse_outlined, context),
                _menuButton('Ürün Yönetimi', Icons.inventory_2_outlined, context),
                _menuButton('Sipariş Yönetimi', Icons.shopping_cart_outlined, context),
                _menuButton('Finans Yönetimi', Icons.attach_money_outlined, context),
              ],
            ),
          ))
        ],
      ),
    );
  }

  // Menu button
  Widget _menuButton(String title, IconData icon, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: LightColors.pureWhite,
          backgroundColor: LightColors.finishFiordGreen,
          minimumSize: const Size.fromHeight(80),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          // Menü butonu tıklama yönlendirme
        },
        child: Column(
          children: [
            Icon(icon, size: 40),
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
