import 'package:aeyde_app/menu_routes/category.dart';
import 'package:aeyde_app/menu_routes/chat.dart';
import 'package:aeyde_app/menu_routes/profile.dart';
import 'package:aeyde_app/menu_routes/shop.dart';
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
     const Category(),
     const Chat(),
     const Profile(),
  ];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: _pages [_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
        ],
      ),
    );
  }
}