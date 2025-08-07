import 'package:flutter/material.dart';
import 'user_data.dart';

class AboutPage extends StatelessWidget {
  final UserData userData;
  const AboutPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Über mich')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profilinformationen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Name'),
              subtitle: Text(userData.name ?? 'Nicht angegeben'),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('E-Mail'),
              subtitle: Text(userData.email ?? 'Nicht angegeben'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Über mich'),
              subtitle: Text(userData.about ?? 'Nicht angegeben'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Fähigkeiten',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSkillChip('Flutter', context),
                _buildSkillChip('Dart', context),
                _buildSkillChip('Firebase', context),
                _buildSkillChip('UI/UX Design', context),
                _buildSkillChip('API Integration', context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillChip(String skill, BuildContext context) {
    return Chip(
      label: Text(skill),
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
      labelStyle: TextStyle(color: Theme.of(context).primaryColor),
    );
  }
}
