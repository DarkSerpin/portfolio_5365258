import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Willkommen im Portfolio von Kevin Montag'), // Titel der AppBar
        backgroundColor: Colors.blue, // Hintergrundfarbe der AppBar
        elevation: 4, // Schatten der AppBar
      ),
      body: Center(
        child: Text(
          'Willkommen im Portfolio von Kevin Montag', // Text im Body
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}