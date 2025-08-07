import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meine Arbeiten')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildProjectCard(
            context,
            'E-Commerce App',
            'Vollständige E-Commerce-Lösung mit Flutter und Firebase',
            Icons.shopping_cart,
          ),
          _buildProjectCard(
            context,
            'Wetter Dashboard',
            'Echtzeit-Wetterdaten mit Visualisierungen',
            Icons.cloud,
          ),
          _buildProjectCard(
            context,
            'Fitness Tracker',
            'Trainingsplanung und Fortschrittsverfolgung',
            Icons.fitness_center,
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Theme.of(context).primaryColor),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 8),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
