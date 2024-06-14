import 'package:flutter/material.dart';
import 'package:mobway_clone_app/theme/light_theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            _drawerItem(
              context,
              icon: Icons.person_2_outlined,
              title: 'Demo',
              onTap: () {
                // Demo yönlendirmesi
              },
            ),
            _drawerItem(
              context,
              icon: Icons.date_range_outlined,
              title: 'İş Ajandası',
              onTap: () {
                // İş ajandası yönlendirmesi
              },
            ),
            _drawerItem(
              context,
              icon: Icons.info_outline,
              title: 'Yazılım Hakkında',
              onTap: () {
                // Yazılım hakkında yönlendirmesi
              },
            ),
            _drawerItem(
              context,
              icon: Icons.exit_to_app_outlined,
              title: 'Çıkış',
              onTap: () {
                // İş ajandası yönlendirmesi
              },
            ),
            Divider(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Ayarlar',
                style: TextStyle(color: LightColors.oceanBlue, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            _drawerItem(
              context,
              icon: Icons.settings_outlined,
              title: 'Kullanıcı Ayarları',
              onTap: () {
                // Kullanıcı ayarları yönlendirmesi
              },
            ),
            _drawerItem(
              context,
              icon: Icons.extension_outlined,
              title: 'Modül Ayarları',
              onTap: () {
                // Modül ayarları yönlendirmesi
              },
            ),
            _drawerItem(
              context,
              icon: Icons.business_center_outlined,
              title: 'Şirket ve Firma Ayarları',
              onTap: () {
                // Şirket ve firma ayarları yönlendirmesi
              },
            ),
            _drawerItem(
              context,
              icon: Icons.language_outlined,
              title: 'Dil Ayarları',
              onTap: () {
                // Dil ayarları yönlendirmesi
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, {required IconData icon, required String title, required Function() onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        color: LightColors.oceanBlue,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: LightColors.oceanBlue,
          fontSize: 18,
        ),
      ),
      onTap: onTap,
    );
  }
}
