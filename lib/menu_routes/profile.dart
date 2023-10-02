import 'package:aeyde_app/modules/settingpage.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined,
              color: Colors.black,
              ),
               onPressed: () { 
                Navigator.popAndPushNamed(context, '/search_page');
                },
            ),
          IconButton(
            onPressed: (){
                Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SettingsPage()
              ),
              );
            },
              icon: const Icon(Icons.settings,
              color: Colors.black,
              ),
            ),
          ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Text("My Orders"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.grey,
                  elevation: 0,
                  child: SizedBox(
                    height: 100.0,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Your content goes here'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Add more Card widgets or other content here if needed
            ],
          ),
        ),
      ),
    );
  }
}