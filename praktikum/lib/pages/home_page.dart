import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';
import 'user_data.dart';

class HomePage extends StatelessWidget {
  final UserData userData;
  const HomePage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio von Kevin Montag'),
        elevation: 4,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Willkommen im Portfolio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            _buildNavButton(
              context,
              'Slider Demo',
              () => SliderPage(userData: userData),
            ),
            _buildNavButton(
              context,
              'Profil bearbeiten',
              () => ProfileFormPage(userData: userData),
            ),
            _buildNavButton(
              context,
              'Einstellungen',
              () => SettingsPage(userData: userData),
            ),
            _buildNavButton(
              context,
              'Zusammenfassung',
              () => SummaryPage(userData: userData),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(
    BuildContext context,
    String text,
    Widget Function() pageBuilder,
  ) {
    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
        ),
        onPressed:
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pageBuilder()),
            ),
        child: Text(text, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
