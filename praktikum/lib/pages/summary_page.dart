import 'package:flutter/material.dart';
import 'user_data.dart';

class SummaryPage extends StatelessWidget {
  final UserData userData;
  const SummaryPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zusammenfassung')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profilinformationen:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Name: ${userData.name ?? "-"}'),
            Text('E-Mail: ${userData.email ?? "-"}'),
            Text('Über mich: ${userData.about ?? "-"}'),
            const SizedBox(height: 30),
            const Text(
              'Slider-Einstellung:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Wert: ${userData.sliderValue.round()}'),
            const SizedBox(height: 30),
            const Text(
              'Einstellungen:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Newsletter: ${userData.settings['newsletter']! ? 'Ja' : 'Nein'}',
            ),
            Text(
              'Benachrichtigungen: ${userData.settings['notifications']! ? 'Ja' : 'Nein'}',
            ),
            Text(
              'Dunkler Modus: ${userData.settings['darkMode']! ? 'Ein' : 'Aus'}',
            ),
            Text(
              'Offline-Modus: ${userData.settings['offlineMode']! ? 'Ein' : 'Aus'}',
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Zurück'),
            ),
          ],
        ),
      ),
    );
  }
}
