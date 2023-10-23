import 'package:aeyde_app/menu_routes/wishlist.dart';
import 'package:aeyde_app/routes/theme.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage ({Key? key}) : super(key: key);

@override
  State<CartPage> createState() => _CartPage();
}

class _CartPage extends State<CartPage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [titleTextColor, contentTextColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.1, 0.9],
            ),
          ),
            child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cart",
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Avenir'),
                          textAlign: TextAlign.left,
                        ),
                Row(
                    children: [
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Wishlist()
                        ),
                      );
                    },
                    icon: const Icon(Icons.favorite_outline_outlined,
                    color: Colors.black,
                    size: 20,
                 ),
                ),
               ],
              ),
             ],
            ),
      ],
      ),
    ),
        ),
    );
  }
}