import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/user_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(userData: UserData()), // Zentrale Dateninstanz
    );
  }
}
