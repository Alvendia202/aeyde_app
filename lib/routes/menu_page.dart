import 'package:aeyde_app/menu_routes/cartpage.dart';
import 'package:aeyde_app/menu_routes/profile.dart';
import 'package:aeyde_app/menu_routes/shop.dart';
import 'package:aeyde_app/menu_routes/explorepage.dart';
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
    const ExplorePage(),
    const CartPage(),
    const Profile(),
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
            icon: const Icon(Icons.explore_outlined),
              activeIcon: const Icon(Icons.explore, color: Colors.black),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
              activeIcon: const Icon(Icons.shopping_cart, color: Colors.black),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_2_outlined),
            activeIcon: const Icon(Icons.person, color: Colors.black),
            label: "Profile",
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