import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/work_page.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/user_data.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  final UserData userData = UserData();
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(userData: userData),
      const WorkPage(),
      AboutPage(userData: userData),
      const ContactPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio von Kevin Montag',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.amber,
        ),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Arbeit'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Über mich',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Kontakt',
            ),
          ],
        ),
      ),
    );
  }
}
