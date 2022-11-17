import 'package:flutter/material.dart';
import 'package:landing_page/pages/landing_page.dart';
import 'package:landing_page/widgets/widget_custom.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aleteo - Somos Aleteo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const LandingPage(),
      },
    );
  }
}
