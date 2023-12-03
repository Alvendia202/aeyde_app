import 'package:flutter/material.dart';
import 'products.dart';

class ProductList extends ChangeNotifier {
  final List <ProductPage> _products = [
    ProductPage (
      name: "Lissy" , 
      price: "26,000",
      imagePath: "assets/images/lissy.jpg",
      rating: "4.3",  
      desc: 'Used for party'
      ),
      ProductPage (
      name: "Ankle Boots" , 
      price: "28,000",
      imagePath: "assets/images/ankle_boots.png",
      rating: "4.3",  
      desc: 'Used for party'
      ),
       ProductPage (
      name: "Mules" , 
      price: "26,000",
      imagePath: "assets/images/mules.jpg",
      rating: "4.3",  
      desc: 'Used for party'
      ),
       ProductPage (
      name: "Sling Back" , 
      price: "26,000",
      imagePath: "assets/images/slingback.jpg",
      rating: "4.3",  
      desc: 'Used for party'
      ),
      ProductPage (
      name: "Mules" , 
      price: "26,000",
      imagePath: "assets/images/mules.jpg",
      rating: "4.3",  
      desc: 'Used for party'
      ),
       ProductPage (
      name: "Sling Back" , 
      price: "26,000",
      imagePath: "assets/images/slingback.jpg",
      rating: "4.3",  
      desc: 'Used for party'
      ),
  ];

  List<ProductPage> _cart = [];

  List<ProductPage> get products => _products;
  List<ProductPage> get cart => _cart;

  void addToCart(ProductPage product, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(product);
    }
    notifyListeners();
  }

  void removeFromCart(ProductPage product) {
    _cart.remove(product);
    notifyListeners();
  }

 String calculateTotal() {
  double totalPrice = 0;
  for (int i = 0; i < cart.length; i++) {
    print("Price String: ${cart[i].price}");
    // Remove non-numeric characters from the price string
    String cleanedPrice = cart[i].price.replaceAll(RegExp(r'[^0-9.]'), '');
    try {
      totalPrice += double.parse(cleanedPrice);
    } catch (e) {
      print("Error parsing price: $e");
    }
  }
  return totalPrice.toStringAsFixed(2);
}
}