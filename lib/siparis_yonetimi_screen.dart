import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_icon_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/service/icon_button_model.dart';

class SiparisYonetimiScreen extends StatelessWidget {
  const SiparisYonetimiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  Dummy Sipariş Yönetimi Button List
    final List<IconButtonModel> siparisYonetimiButtons = [
      IconButtonModel(
        text: 'Alınan Siparişler',
        icon: Icons.shopping_bag_outlined,
        onPressed: () {
          print('Pressed to Alınan Siparişler!');
        },
      ),
      IconButtonModel(
        text: 'Verilen Siparişler',
        icon: Icons.shopping_bag_outlined,
        onPressed: () {
          print('Pressed to Verilen Siparişler!');
        },
      ),
      IconButtonModel(
        text: 'Alınan Siparişlerin Sevkiyatı',
        icon: Icons.local_shipping_outlined,
        onPressed: () {
          print('Pressed to Alınan Siparişlerin Sevkiyatı!');
        },
      ),
      IconButtonModel(
        text: 'Verilen Siparişlerin Teslim Alınması',
        icon: Icons.receipt_long_outlined,
        onPressed: () {
          print('Pressed to Verilen Siparişlerin Teslim Alınması!');
        },
      ),
      IconButtonModel(
        text: 'Atamalı Sipariş Teslim Alma',
        icon: Icons.assignment_turned_in_outlined,
        onPressed: () {
          print('Pressed to Atamalı Sipariş Teslim Alma!');
        },
      ),
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const CustomRedBanner(title: 'Sipariş Yönetimi'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: siparisYonetimiButtons.length,
                itemBuilder: (context, index) {
                  final siparisYonetimiButton = siparisYonetimiButtons[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: CustomIconButton(
                      text: siparisYonetimiButton.text,
                      onPressed: siparisYonetimiButton.onPressed,
                      icon: siparisYonetimiButton.icon,
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
