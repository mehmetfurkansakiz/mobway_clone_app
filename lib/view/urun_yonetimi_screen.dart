import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_drawer.dart';
import 'package:mobway_clone_app/core/custom_icon_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/core/reusable_icon_button_list.dart';
import 'package:mobway_clone_app/service/icon_button_model.dart';

class UrunYonetimiScreen extends StatelessWidget {
  const UrunYonetimiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy Urun Yönetimi Button List
    final List<IconButtonModel> urunYonetimiButtons = [
      IconButtonModel(
        text: 'Kabul İşlemleri',
        icon: Icons.check_circle_outline,
        onPressed: () {
          print('Pressed to Kabul İşlemleri!');
        },
      ),
      IconButtonModel(
        text: 'Satış İşlemleri',
        icon: Icons.point_of_sale_outlined,
        onPressed: () {
          print('Pressed to Satış İşlemleri!');
        },
      ),
      IconButtonModel(
        text: 'İade İşlemleri',
        icon: Icons.undo_outlined,
        onPressed: () {
          print('Pressed to İade İşlemleri!');
        },
      ),
      IconButtonModel(
        text: 'Stok İşlemleri',
        icon: Icons.warehouse_outlined,
        onPressed: () {
          print('Pressed to Stok İşlemleri!');
        },
      ),
      IconButtonModel(
        text: 'Etiket İşlemleri',
        icon: Icons.local_offer_outlined,
        onPressed: () {
          print('Pressed to Etiket İşlemleri!');
        },
      ),
      IconButtonModel(
        text: 'Fiyat Gör',
        icon: Icons.price_check_outlined,
        onPressed: () {
          print('Pressed to Fiyat Gör!');
        },
      ),
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: Column(
        children: [
          const CustomRedBanner(title: 'Ürün Yönetimi'),
          ReusableIconButtonList(
            buttons: urunYonetimiButtons,
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
