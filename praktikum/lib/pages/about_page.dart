import 'package:flutter/material.dart';
import 'profile_form_page.dart';
import 'user_data.dart';

class AboutPage extends StatelessWidget {
  final UserData userData;
  const AboutPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Über mich',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
          ),
          const SizedBox(height: 20),
          Text(
            userData.about ?? 'Keine Beschreibung vorhanden',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileFormPage(userData: userData),
                    ),
                  ),
              child: const Text('Profil bearbeiten'),
            ),
          ),
        ],
      ),
    );
  }
}
