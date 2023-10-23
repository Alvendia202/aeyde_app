import 'package:aeyde_app/modules/products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTile extends StatelessWidget {
  final ProductPage productPage;

  const ProductTile({
    Key? key,
    required this.productPage, required Products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(150, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 206, 206, 206),
              offset: Offset(0, 3),
            ),
          ],
        ),
        margin: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            Image.asset(
              productPage.imagePath,
              height: 120,
              width: 600,
               fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10),
            Text(
              productPage.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),
            SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$' + productPage.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Text(
                        productPage.rating,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}