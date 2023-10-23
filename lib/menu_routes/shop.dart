import 'package:aeyde_app/menu_routes/inboxpage.dart';
import 'package:aeyde_app/modules/products.dart';
import 'package:aeyde_app/modules/imageslider.dart';
import 'package:aeyde_app/modules/product_tile.dart';
import 'package:aeyde_app/routes/theme.dart';
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
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset('assets/images/aeyde.png',
        width: 100, 
        height: 40,
      ),
        ),
        leading: IconButton(
    icon: Icon(Icons.mail_outlined,
    color: Colors.black,
    size: 20),
    onPressed: () {
      // Add your onPressed functionality here.
    },
  ),
  actions: [
          IconButton(
            onPressed: (){
            },
              icon: const Icon(Icons.search_rounded,
              color: Colors.black,
              size: 20,
              ),
            ),
          IconButton (
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => InboxPage()
              ),
              );
            },
            icon: const Icon(Icons.favorite_outline_rounded,
            color: Colors.black,
            size: 20,
            ),
          ),
        ],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [titleTextColor, contentTextColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.1, 0.9],
                  ),
                  ),
                  child: SingleChildScrollView(
             child: Column(
                children: <Widget>[
                    SlideImages(imgList: imgList),
                GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  mainAxisExtent: 315,
                  crossAxisCount: 2, 
                ),
                itemCount: Products.length,
                itemBuilder: (BuildContext context, int index) {
                return ProductTile(
                  productPage: Products[index],
                  Products: null,
                 );
               },
             ),
            ],
          ), 
        ),
      ),
    );
  }
}
