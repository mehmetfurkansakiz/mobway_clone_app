import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class CompanySelectionScreen extends StatefulWidget {
  const CompanySelectionScreen({super.key});

  @override
  State<CompanySelectionScreen> createState() => _CompanySelectionScreenState();
}

class _CompanySelectionScreenState extends State<CompanySelectionScreen> {
  // Şirketlerin listesi
  final List<String> companies = [
    'BYM Demo',
    'BYM Two',
    'BYM Three',
    'BYM Four',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          const CustomRedBanner(
            title: 'Şirket Seçiniz',
          ),
          _companiesListView()
        ],
      ),
    );
  }

  Expanded _companiesListView() {
    return Expanded(
        child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      itemCount: companies.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: CustomButton(
            onPressed: () {
              // tıklanan elevated button'a yönlendirme
            },
            text: companies[index],
            backgroundColor: LightColors.pureWhite,
            textColor: LightColors.steelyGrey,
          ),
        );
      },
    ));
  }
}
