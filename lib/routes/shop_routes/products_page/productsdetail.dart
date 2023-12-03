// ignore_for_file: must_be_immutable

import 'package:aeyde_app/pages/wishlist.dart';
import 'package:aeyde_app/buttons/buttons.dart';
import 'package:aeyde_app/routes/shop_routes/products_page/productlist.dart';
import 'package:aeyde_app/routes/shop_routes/products_page/products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class ProductsDetailsPage extends StatefulWidget {
  final ProductPage products;

 const ProductsDetailsPage ({
    super.key,
  required this.products,
  });

  @override
  State<ProductsDetailsPage> createState() => _ProductsDetailsPageState();
}

class _ProductsDetailsPageState extends State<ProductsDetailsPage> {
  //quantity
  int quantityCount = 0;

  // decrement
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
      quantityCount--;
      }
    });
  }

  //increment

  void incrementQuantity(){
    setState(() {
      setState(() {
        quantityCount++;
      });
    });
  }

  void addToCart() {
    if (quantityCount > 0) {
      final Products = context.read<ProductList>();

      showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
        content: Text("Successfully added to your cart",
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: (){
              //pop once to remove dialog box
              Navigator.pop(context);
              // pop once to go previous screen
              Navigator.pop(context);

              Products.addToCart(widget.products, quantityCount);
            },
            icon: const Icon(
              Icons.done,
              color: Colors.black),
            )
        ],
      ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  children: [
                    Image.asset(
                      widget.products.imagePath,height:200,
                    ),
                    const SizedBox(height: 25,),
                  
                  Row(
                    children:[
                      Icon(Icons.star, color: Colors.yellow[80]
                      ),
                  
                    const SizedBox(height: 5),
              
                    Text(widget.products.rating, 
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                  Text(widget.products.name,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize:28),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(widget.products.desc,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      height: 2,
                      color:Colors.grey[600]),
                    ),
                  ],
              ),
            ),
                ),
                Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ "+ widget.products.price, 
                          style: const TextStyle(
                            color: Colors.black, 
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                            ),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: Colors.grey,
                                  shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove, 
                                      color: Colors.white,
                                  ),
                                  onPressed: decrementQuantity,
                                  ),
                                ),

                                SizedBox(
                                  width: 40,
                                  child: Center(
                                    child: Text(quantityCount.toString(),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(color: Colors.grey,
                                  shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add, 
                                      color: Colors.white,
                                  ),
                                  onPressed: incrementQuantity,
                                  ),
                                )
                              ],)
                        ],
                        ),

                        const SizedBox(height: 25),
                 Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_outline),
                      color: Colors.black,
                      onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Wishlist()
                        ),
                      );
                      },
                    ),
                    const SizedBox(width: 10),
                    Buttons(
                      text: "Add to Cart", 
                      onTap: addToCart,
    ),
  ],
),
                    ],
                ),
                ),
          ],
        ),
                );
  }
}