import 'package:aeyde_app/modules/theme.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist ({Key? key}) : super(key: key);

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
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined, size:20, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, '');
          },
              ),
                      Text(
                        "Wishlist",
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Avenir'),
                          textAlign: TextAlign.left,
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