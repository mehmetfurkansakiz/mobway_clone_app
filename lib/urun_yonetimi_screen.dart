import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_icon_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
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
      body: Column(
        children: [
          const CustomRedBanner(title: 'Ürün Yönetimi'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: urunYonetimiButtons.length,
                itemBuilder: (context, index) {
                  final urunYonetimiButton = urunYonetimiButtons[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: CustomIconButton(
                      text: urunYonetimiButton.text,
                      onPressed: urunYonetimiButton.onPressed,
                      icon: urunYonetimiButton.icon,
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
