import 'package:flutter/material.dart';
import 'package:mobway_clone_app/core/custom_app_bar.dart';
import 'package:mobway_clone_app/core/custom_button.dart';
import 'package:mobway_clone_app/core/custom_red_banner.dart';
import 'package:mobway_clone_app/view/menu_screen.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class CompanySelectionScreen extends StatefulWidget {
  const CompanySelectionScreen({super.key});

  @override
  State<CompanySelectionScreen> createState() => _CompanySelectionScreenState();
}

class _CompanySelectionScreenState extends State<CompanySelectionScreen> {
  // Dummy Şirketlerin listesi
  final List<String> companies = [
    'BYM Demo',
    'BYM Two',
    'BYM Three',
    'BYM Four',
  ];

  // Dummy Sub-Şirketlerin listesi
  final List<String> subCompanies = [
    'Sub 1',
    'Sub 2',
    'Sub 3',
    'Sub 4',
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
          _companiesListView() // Firmaların listelenmesi
        ],
      ),
    );
  }

  // Firmaların listelenmesi
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
              _showSubCompanyDialog(companies[index]); //Firma secim ekrani
            },
            text: companies[index],
            backgroundColor: LightColors.pureWhite,
            textColor: LightColors.steelyGrey,
          ),
        );
      },
    ));
  }

  // Firma secim ekrani
  void _showSubCompanyDialog(String company) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: LightColors.silverGrey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: LightColors.romeoRed,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: _dialogRedBanner(context), // Firma secim ekrani kirmizi banner
                    ),
                    _subCompaniesListView(company), // Firma secim ekrani altindaki sub-firmalar
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Firma secim ekrani kirmizi banner
  Row _dialogRedBanner(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Firma Seçiniz',
          style: TextStyle(
            color: LightColors.pureWhite,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.close, color: LightColors.pureWhite),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  // Firma secim ekrani altindaki sub-firmalar
  Expanded _subCompaniesListView(String company) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        itemCount: subCompanies.length, // Replace with actual sub-companies count
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuScreen(),
                    ));
              },
              text: '$company Sub $index',
              backgroundColor: LightColors.pureWhite,
              textColor: LightColors.steelyGrey,
            ),
          );
        },
      ),
    );
  }
}
