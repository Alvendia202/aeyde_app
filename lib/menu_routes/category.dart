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
      appBar: AppBar(title: const Text("Category"),),
    );
  }
}