import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayWidget extends StatelessWidget {
  const PayWidget({Key? key}) : super(key: key);

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
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); 
            },
         ),
        Text(
          "Check out",
          style: GoogleFonts.notoSerif(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
          ),
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