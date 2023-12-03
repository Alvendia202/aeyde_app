import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Text(
          "Search",
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontFamily: 'Avenir'),
          textAlign: TextAlign.left,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Aeyde",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Avenir'),
              textAlign: TextAlign.left,
            ),
          ],
        )
      ],
      ),
    ),
    );
  }
}