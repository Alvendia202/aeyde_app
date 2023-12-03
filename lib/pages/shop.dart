import 'package:aeyde_app/pages/cartpage.dart';
import 'package:aeyde_app/buttom_sheets/userprofile/profilesheet.dart';
import 'package:aeyde_app/pages/searchpage.dart';
import 'package:aeyde_app/routes/shop_routes/products_page/productlist.dart';
import 'package:aeyde_app/routes/shop_routes/slide_image/imageslider.dart';
import 'package:aeyde_app/routes/shop_routes/products_page/product_tile.dart';
import 'package:aeyde_app/routes/shop_routes/products_page/productsdetail.dart';
import 'package:aeyde_app/modules/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aeyde_app/routes/shop_routes/shopheader.dart';

class ShopPage extends StatefulWidget {
  const ShopPage ({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void navigateToProductsDetails(int index) {
    final productList = context.read<ProductList>();
    final Products = productList.products;
    
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => ProductsDetailsPage(
          products: Products[index],
    ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {  
    final productList = context.read<ProductList>();
    final products = productList.products;  
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body:  
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [titleTextColor, contentTextColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.1, 0.9],
                  ),
                  ),
                child: SafeArea(
              child:
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Row(
                children: <Widget>[
                  const ShopWidget(),
                  const SizedBox(width: 290),
                  Row(
                      children: [
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CartPage()
                        ),
                      );
                    },
                    icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 20,
                 ),
                ),
                      ],
                  ),
                  ProfileSheet(), 
                ],
                ),
                 Expanded(
  child: SingleChildScrollView(
    child: Column(
      children: <Widget>[  
                    SearchPage(),           
                    SlideImages(imgList: imgList),
                GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          childAspectRatio: 0.90,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                return ProductTile(
                  productPage: products[index],
                  Products: null, 
                  onTap: () =>navigateToProductsDetails(index),
                 );
               },
             ),
            ],
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
