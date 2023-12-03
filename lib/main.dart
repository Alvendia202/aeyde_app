import 'package:aeyde_app/buttom_sheets/userprofile/list.dart';
import 'package:aeyde_app/pages/cartpage.dart';
import 'package:aeyde_app/pages/shop.dart';
import 'package:aeyde_app/routes/shop_routes/products_page/productlist.dart';
import 'package:aeyde_app/pages/settings_page.dart';
import 'package:aeyde_app/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductList()),
        ChangeNotifierProvider(create: (context) => SettingsList()), 
      ],
      child: const MyApp(),
    ),
  );
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
        '/cart_page' : (context) =>  const CartPage(),
        '/shopPage': (ctx) => const ShopPage(),
      },
    );
  }
}