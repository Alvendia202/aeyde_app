import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  final String text;
  final void Function ()? onTap;

  const GetStarted({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
   Widget build (BuildContext context){
    return GestureDetector(
      onTap: onTap, 
      child: Container (
      decoration: const BoxDecoration(color:Colors.black),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
          text,
          style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 10),
          const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white
          ),
        ],
      ),
    ),
    );
   }
  }