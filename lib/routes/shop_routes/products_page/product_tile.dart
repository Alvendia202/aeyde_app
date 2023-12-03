import 'package:aeyde_app/routes/shop_routes/products_page/products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTile extends StatelessWidget {
  final ProductPage productPage;
  final void Function ()? onTap;
  

  const ProductTile({
    super.key,
    required this.productPage, 
    required Products,
    required this.onTap,
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Container(
          
  margin: const EdgeInsets.all(20),
  padding: const EdgeInsets.all(10),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 206, 206, 206),
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                width: 200,
                height: 150,
              child: ClipRRect(
    borderRadius: BorderRadius.circular(5.0),
            child:
              Image.asset(
                productPage.imagePath,
              ),
              ),
              ),
              Text(
                productPage.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
              SizedBox(
                width: 120,
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
                          Icons.favorite_outline,
                          size: 20,
                          color: Colors.black,
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