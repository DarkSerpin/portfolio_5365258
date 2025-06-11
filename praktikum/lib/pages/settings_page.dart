import 'package:flutter/material.dart';
import 'user_data.dart';

class SettingsPage extends StatefulWidget {
  final UserData userData;
  const SettingsPage({super.key, required this.userData});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Einstellungen')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text('Newsletter abonnieren'),
              value: widget.userData.settings['newsletter'],
              onChanged:
                  (value) => setState(() {
                    widget.userData.settings['newsletter'] = value!;
                  }),
            ),
            CheckboxListTile(
              title: const Text('Benachrichtigungen aktivieren'),
              value: widget.userData.settings['notifications'],
              onChanged:
                  (value) => setState(() {
                    widget.userData.settings['notifications'] = value!;
                  }),
            ),
            SwitchListTile(
              title: const Text('Dunkler Modus'),
              value: widget.userData.settings['darkMode']!,
              onChanged:
                  (value) => setState(() {
                    widget.userData.settings['darkMode'] = value;
                  }),
            ),
            SwitchListTile(
              title: const Text('Offline-Modus'),
              value: widget.userData.settings['offlineMode']!,
              onChanged:
                  (value) => setState(() {
                    widget.userData.settings['offlineMode'] = value;
                  }),
            ),
            const Spacer(),
            const Divider(),
            const Text(
              'Zusammenfassung der Einstellungen:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Newsletter: ${widget.userData.settings['newsletter']! ? 'Ja' : 'Nein'}',
            ),
            Text(
              'Benachrichtigungen: ${widget.userData.settings['notifications']! ? 'Ja' : 'Nein'}',
            ),
            Text(
              'Dunkler Modus: ${widget.userData.settings['darkMode']! ? 'Ein' : 'Aus'}',
            ),
            Text(
              'Offline-Modus: ${widget.userData.settings['offlineMode']! ? 'Ein' : 'Aus'}',
            ),
            const SizedBox(height: 20),
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
