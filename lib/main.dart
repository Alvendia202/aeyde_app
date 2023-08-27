import 'package:flutter/material.dart';
import 'routes/intro_page.dart';
import 'routes/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/menu_page': (context) => const MenuPage(),
      },
    );
  }
}
