import 'package:aeyde_app/routes/routes/search.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage ({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("a e y d e"),
        leading: IconButton (
          onPressed: () {
            },
          icon: const Icon(Icons.search
          ),
        ),
          actions: [
          IconButton(
            onPressed: (){
            },
              icon: const Icon(Icons.favorite),
            ),
          IconButton (
            onPressed: () {
            },
            icon: const Icon(Icons.shopping_cart),
          )
          ],
      ),
        ),
      );
  }
}
