import 'package:aeyde_app/menu_routes/inboxpage.dart';
import 'package:aeyde_app/menu_routes/profile.dart';
import 'package:aeyde_app/menu_routes/shop.dart';
import 'package:aeyde_app/menu_routes/explorepage.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({ Key? key }) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPage();

}

class _MenuPage extends State<MenuPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
     const ShopPage(),
     const ExplorePage(),
     const InboxPage(),
     const Profile(),
  ];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: _pages [_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(size: 28),
         unselectedIconTheme: IconThemeData(size: 28),
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: 'Me'),
        ],
      ),
    );
  }
}