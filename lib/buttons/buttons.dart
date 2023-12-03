import 'package:flutter/material.dart';

class Buttons extends StatelessWidget{
  final String text;
  final void Function ()? onTap;

  const Buttons({
    super.key,
    required this.text, 
    required this.onTap, 
  });

@override
Widget build(BuildContext context){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 400.0, // set the width to 100.0 pixels
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5), 
    ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_cart, color: Colors.white,),
          const SizedBox(width: 10,),
          Text(text,
          style: TextStyle(color: Colors.white)),
        ],
      ),
      ),
  );
  }
}