import 'package:aeyde_app/modules/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aeyde_app/modules/settingscard.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SettingsCard> settings = <SettingsCard>[
      SettingsCard(
      title: "Log in/ Register",
      leadingIcon: Icons.person_2_outlined,
      size: 10,
      actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Colors.black,
              ),
                onPressed: (){
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  },
      ),
      SettingsCard(
      title: "Location",
      leadingIcon: Icons.person_2_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SettingsPage()
              ),
              );
            },
        ), onPressed: () {  }
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
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }
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
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }
      ),
      SettingsCard(
      title: "Privacy & Cookie Policy",
      leadingIcon: Icons.person_2_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }
      ),
      SettingsCard(
      title: "Terms & Condition",
      leadingIcon: Icons.person_2_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }
      ),
      SettingsCard(
      title: "Rating & Feedback",
      leadingIcon: Icons.person_2_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }
      ),
      SettingsCard(
      title: "Connect to Us",
      leadingIcon: Icons.person_2_outlined,
      size: 10,
        actionButton: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
              size: 10,
              color: Color.fromARGB(255, 8, 7, 7),
              ),
                onPressed: (){
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }
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
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()
              ),
              );
            },
        ), onPressed: () {  }
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/search_page');
          },
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(1),
        itemCount: settings.length,
        itemBuilder: (BuildContext context, int index) {
          return SettingsTile(settingsCard: settings[index]);
        },
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final SettingsCard settingsCard;

  const SettingsTile({Key? key, required this.settingsCard}) : super(key: key);
  
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(174, 245, 245, 245),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        
           Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(5),
              leading: Icon(
                settingsCard.leadingIcon,
                color: Colors.black,
              ),
              title: Text(
                settingsCard.title,
                style: GoogleFonts.dmSerifDisplay(fontSize: 15),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min, // To make widgets aligned horizontally
                children: [
                settingsCard.actionButton,
              ],
              ),
            ),
          ),
        ],
                ),
        
     
    );
  }
}