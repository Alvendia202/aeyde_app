import 'package:aeyde_app/routes/profile_routes/profile.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  final Image image;
  final void Function()? onTap;

  const HeaderWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(26.0),
         child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Column(
            children: [ 
            Text(
              text,
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
            ),
           ],
            ),
           const SizedBox(width: 290),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              child: Container(
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 10))
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                    ),
                  ),
                ),
              ),
            ),
           ],
        ),
         ),  
      ),
    );
  }
}