import 'package:flutter/material.dart';
import 'package:mobway_clone_app/view/company_selection_screen.dart';
import 'package:mobway_clone_app/core/custom_button.dart';
import 'package:mobway_clone_app/core/custom_text_field.dart';
import '../theme/light_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              LightColors.turquoiseBlue, // üst kısım rengi
              LightColors.seaGreen, // alt kısım rengi
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Mobway text logo
                _mobwayLogoText(),

                _emptyBox(),

                // Username textfield
                const CustomTextField(
                  hintText: 'Username',
                  icon: Icons.person,
                  autofillHints: [AutofillHints.username],
                ),

                _emptyBox(),

                // password textfield
                const CustomTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),

                _emptyBox(),

                // Hatırla checkbox
                _hatirlaCheckbox(),

                _emptyBox(),

                // Giriş button
                CustomButton(
                  text: 'Giriş Yap',
                  onPressed: () {
                    // Giriş yapma işlemi sonrası yönlendirme
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CompanySelectionScreen()),
                    );
                  },
                ),

                _emptyBox(),

                // version text
                const Text(
                  'Ver. 1.1.8',
                  style: TextStyle(color: LightColors.pureWhite),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(height: 20);
}

class _hatirlaCheckbox extends StatelessWidget {
  const _hatirlaCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (bool? newValue) {
            // İşaretleme
          },
          activeColor: LightColors.pureWhite,
        ),
        const Text(
          'Hatırla',
          style: TextStyle(color: LightColors.pureWhite),
        ),
      ],
    );
  }
}

class _mobwayLogoText extends StatelessWidget {
  const _mobwayLogoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'mobway',
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: LightColors.pureWhite,
      ),
    );
  }
}
