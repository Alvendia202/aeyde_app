import "package:aeyde_app/menu_routes/products.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ProductTile extends StatelessWidget {
  final ProductPage productPage;
  const ProductTile({super.key,
  required this.productPage, required product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(174, 245, 245, 245),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.only(left:5),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productPage.imagePath,
            height: 140,
          ),
          Text (
            productPage.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
          SizedBox(
            width: 150,
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
                '\$' + productPage.price, 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.grey[700]
                  ),
              ),
              Row(
                children: [
                  Icon(Icons.star,
                  color: Colors.yellow[800]
                  ),
                  Text(productPage.rating,
                  style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
            ),
          )
        ],
      ),
    );
  }
}