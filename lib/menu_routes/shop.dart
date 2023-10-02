import 'package:aeyde_app/menu_routes/products.dart';
import 'package:aeyde_app/modules/imageslider.dart';
import 'package:aeyde_app/modules/product_tile.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage ({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List Products = [
    ProductPage (
      name: "Lissy" , 
      price: "26,000",
      imagePath: "assets/images/lissy.jpg",
      rating: "4.3",  
      ),
       ProductPage (
      name: "Ankle Boots" , 
      price: "28,000",
      imagePath: "assets/images/ankle_boots.png",
      rating: "4.3",  
      ),
       ProductPage (
      name: "Mules" , 
      price: "26,000",
      imagePath: "assets/images/mules.jpg",
      rating: "4.3",  
      ),
       ProductPage (
      name: "Sling Back" , 
      price: "26,000",
      imagePath: "assets/images/slingback.jpg",
      rating: "4.3",  
      ),
  ];

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          actions: [
          IconButton(
            onPressed: (){
            },
              icon: const Icon(Icons.favorite_border_outlined,
              color: Colors.black,
              ),
            ),
          IconButton (
            onPressed: () {
            },
            icon: const Icon(Icons.shopping_cart_outlined,
            color: Colors.black,
            ),
          ),
        ],
        title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                          color: Colors.transparent, 
                          width: 10.0, 
                  ),
                ),
                        hintText: 'search here',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          ),
                          suffixIcon: Icon(Icons.search,
                          color:Colors.black,
                        ),       
              ),
            ),
            ),
        ),
        ),
        body: SingleChildScrollView (
            child:  SizedBox(
            height: MediaQuery.of(context).size.height,
            child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
              children: [
             SlideImages(imgList: imgList),
                 
             Expanded(
              child: GridView.custom(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2, 
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Expanded(
                  child: ProductTile( productPage: Products[index], product: null,),
                );
              },
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
