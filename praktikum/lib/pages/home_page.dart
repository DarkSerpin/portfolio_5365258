import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'), // Titel der AppBar
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