import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage ({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('P r o f i l e',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold),
          ),
            centerTitle: true,
        leading: IconButton (
          onPressed: () {
            },
          icon: const Icon(Icons.menu,  
          color: Colors.black,
          ),
        ),
          actions: [
            IconButton(
              icon: const Icon(Icons.chat_outlined,
              color: Colors.black,
              ),
               onPressed: () { 
                Navigator.popAndPushNamed(context, '/search_page');
                },
            ),
          IconButton(
            onPressed: (){
            },
              icon: const Icon(Icons.settings,
              color: Colors.black,
              ),
            ),
          ],
      ),
          ),
  );
  }
}