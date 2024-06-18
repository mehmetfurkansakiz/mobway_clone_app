import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_icon_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/core/reusable_icon_button_list.dart';
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
          ReusableIconButtonList(
            buttons: siparisYonetimiButtons,
            buttonWidgetBuilder: (text, onPressed, icon) => CustomIconButton(
              text: text,
              onPressed: onPressed,
              icon: icon,
            ),
          )
        ],
      ),
    );
  }
}
