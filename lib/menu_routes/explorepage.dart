import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
       title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                          color: Colors.transparent, 
                          width: 10.0, 
                  ),
                ),
                        hintText: 'search here',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          ),
                          suffixIcon: Icon(Icons.search,
                          color:Colors.black,
                        ),       
              ),
            ),
            ),
        ),
      ),
          ),
  );
  }
}