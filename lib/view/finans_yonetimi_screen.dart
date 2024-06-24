import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_drawer.dart';
import 'package:mobway_clone_app/core/custom_icon_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/core/reusable_icon_button_list.dart';
import 'package:mobway_clone_app/service/icon_button_model.dart';

class FinansYonetimiScreen extends StatelessWidget {
  const FinansYonetimiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy Finans Yönetimi Button List
    final List<IconButtonModel> finansYonetimiButtons = [
      IconButtonModel(
        text: 'Kasa Tahsilat',
        icon: Icons.account_balance_wallet_outlined,
        onPressed: () {
          print('Pressed to Kasa Tahsilat!');
        },
      ),
      IconButtonModel(
        text: 'Banka Tahsilat',
        icon: Icons.account_balance_outlined,
        onPressed: () {
          print('Pressed to Banka Tahsilat!');
        },
      ),
      IconButtonModel(
        text: 'Cari Hesap Ekstre',
        icon: Icons.currency_exchange_outlined,
        onPressed: () {
          print('Pressed to Cari Hesap Ekstre!');
        },
      ),
      IconButtonModel(
        text: 'Gün Sonu Raporu',
        icon: Icons.receipt_long_outlined,
        onPressed: () {
          print('Pressed to Gün Sonu Raporu!');
        },
      ),
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: Column(
        children: [
          const CustomRedBanner(title: 'Finans Yönetimi'),
          ReusableIconButtonList(
            buttons: finansYonetimiButtons,
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
