import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
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
          "Settings",
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
    );
  }
}