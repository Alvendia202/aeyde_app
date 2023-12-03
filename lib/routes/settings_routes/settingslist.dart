import 'dart:js';
import 'package:aeyde_app/pages/settings_page.dart';
import 'package:aeyde_app/routes/login_routes/login.dart';
import 'package:flutter/material.dart';

class SettingsCard {
  final String title;
  final IconData leadingIcon;
  final IconButton actionButton;
  final VoidCallback onPressed;

static var length = settings.length; 

SettingsCard({
    required this.title,
    required this.leadingIcon,
    required this.actionButton,
    required this.onPressed, 
    required int size, 
    required settingsCard,
  });

 // ignore: unused_element
 String get _title => title;
  // ignore: unused_element
  IconData get _leadingIcon => leadingIcon;
  // ignore: unused_element
  Type get _IconButton => IconButton;
}

List<SettingsCard> settings = [
      SettingsCard(
      title: "Log in/Register",
      leadingIcon: Icons.person_2_outlined,
      size: 8,
      actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Colors.black,
              ),
      onPressed: () {
            Navigator.push(
              context as BuildContext,
              MaterialPageRoute(builder: (context) => LoginPage()),
        );
            },
        ), 
        onPressed: () {}, settingsCard: null,
      ),
      SettingsCard(
      title: "Location",
      leadingIcon: Icons.pin_drop_sharp,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context as BuildContext).push(
              MaterialPageRoute(builder: (context) => SettingsPage()
              ),
              );
            },
        ), onPressed: () {  }, settingsCard: null,
      ),
      SettingsCard(
      title: "Language",
      leadingIcon: Icons.book_online_rounded,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => LoginPage()));
                }
              ), onPressed: () {  }, settingsCard: null, 
      ),
      SettingsCard(
      title: "Currency",
      leadingIcon: Icons.money_off_rounded,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context as BuildContext).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }, settingsCard: null, 
      ),
      SettingsCard(
      title: "Privacy & Cookie Policy",
      leadingIcon: Icons.lock_open_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context as BuildContext).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }, settingsCard: null,
      ),
      SettingsCard(
      title: "Terms & Condition",
      leadingIcon: Icons.rule_folder_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context as BuildContext).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }, settingsCard: null, 
      ),
      SettingsCard(
      title: "Rating & Feedback",
      leadingIcon: Icons.star_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context as BuildContext).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }, settingsCard: null, 
      ),
      SettingsCard(
      title: "About Aeyde",
      leadingIcon: Icons.favorite_outline_rounded,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context as BuildContext).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }, settingsCard: null, 
      ),
    ];