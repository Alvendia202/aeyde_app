// ignore_for_file: unused_import

import 'package:aeyde_app/pages/cartpage.dart';
import 'package:aeyde_app/pages/inboxpage.dart';
import 'package:aeyde_app/routes/profile_routes/profile.dart';
import 'package:aeyde_app/pages/shop.dart';
import 'package:aeyde_app/pages/explorepage.dart';
import 'package:aeyde_app/pages/searchpage.dart';

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;

  List<Widget> _screens = [
    const ShopPage(),
    const SearchPage(),
    const ExplorePage(),
    const CartPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_bag_outlined),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search_outlined),
              activeIcon: const Icon(Icons.search, color: Colors.black),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.explore_outlined),
              activeIcon: const Icon(Icons.explore, color: Colors.black),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
            activeIcon: const Icon(Icons.shopping_cart, color: Colors.black),
            label: "Cart",
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, // Assign the function to handle tap events
      ),
    );
  }
}