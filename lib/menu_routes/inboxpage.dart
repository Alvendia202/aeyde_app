import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InboxPage extends StatefulWidget {
  const InboxPage ({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Message',
        style: GoogleFonts.dmSerifDisplay(
          color: Colors.black,
          fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 12, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/search_page');
          },
        ),
      ),
          ),
  );
  }
}