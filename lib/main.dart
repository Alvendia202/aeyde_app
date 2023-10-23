import 'package:aeyde_app/menu_routes/cartpage.dart';
import 'package:aeyde_app/modules/login.dart';
import 'package:aeyde_app/modules/settings_page.dart';
import 'package:flutter/material.dart';
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
      home: MenuPage(),
      routes: {
        '/menu_page': (context) => MenuPage(),
        '/settings_page': (context) => const SettingsPage(),
        '/login_page': (context) =>  const LoginPage(),
        '/cart_page' : (context) =>  const CartPage(),
      },
    );
  }
}
