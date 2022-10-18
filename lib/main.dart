import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/home_screen_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mostafa Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xFF0E0C38),
        primarySwatch: Colors.blue,
      ),
      home: const Responsive(
          mobile: HomeScreenTab(),
          tablet: HomeScreenTab(),
          web: HomeScreen()),
    );
  }
}
