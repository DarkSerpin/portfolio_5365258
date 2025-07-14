import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';
import 'user_data.dart';

class WorkPage extends StatelessWidget {
  final UserData userData;
  const WorkPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Text('Meine Arbeiten', 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        _buildProjectCard(
          context,
          'Slider Demo',
          'Interaktives UI-Element',
          () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => SliderPage(userData: userData)
          ),
        ),
        _buildProjectCard(
          context,
          'Profil Editor',
          'Persönliche Informationen bearbeiten',
          () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => ProfileFormPage(userData: userData)
          ),
        ),
        _buildProjectCard(
          context,
          'Einstellungen',
          'App-Einstellungen anpassen',
          () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => SettingsPage(userData: userData)
          ),
        ),
        _buildProjectCard(
          context,
          'Zusammenfassung',
          'Alle Daten im Überblick',
          () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => SummaryPage(userData: userData)
          ),
        ),
      ],
    );
  }

  Widget _buildProjectCard(BuildContext context, String title, 
                            String description, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}