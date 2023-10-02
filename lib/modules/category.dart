import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: category (),
    );
  }

  Widget category () {
    return Container (
      child: Column (
        children: [
          SizedBox(
            height: 300,
          ),
          Container (
            width: 130,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
              color:Colors.white),
            ),
            child: TextField(

            ),
          ),
        ],
      ),
    );
    }
  }