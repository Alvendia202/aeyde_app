import 'package:aeyde_app/buttom_sheets/userprofile/profilesheet.dart';
import 'package:aeyde_app/routes/shop_routes/products_page/products.dart';
import 'package:aeyde_app/routes/cart_routes/pay_header.dart';
import 'package:aeyde_app/modules/theme.dart';
import 'package:flutter/material.dart';

class PayPage extends StatefulWidget {
  final List<ProductPage> cartItems;

  const PayPage({Key? key, 
  required this.cartItems, 
  required List cart}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  const PayWidget(),
                  const SizedBox(width: 180),
                  Row(
                    children: [
                       ProfileSheet(),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Display the list of cart items
                        Expanded(
                          // ignore: unnecessary_null_comparison
                          child: widget.cartItems != null
                              ? ListView.builder(
                                  itemCount: widget.cartItems.length,
                                  itemBuilder: (context, index) {
                                    ProductPage product = widget.cartItems[index];
                                    return ListTile(
                                      title: Text(product.name,
                                      ),
                                      subtitle: Text('\$${product.price}'),
                                        leading: Image.asset(
                                          product.imagePath,
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      // You can add more details here if needed
                                    );
                                  },
                                )
                              : 
                              Container(), // Add a container or placeholder when cartItems is null
                        ),
                        const SizedBox(height: 16),
                        // Display the total price
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '\$${calculateTotalPrice(widget.cartItems)}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Place order button
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Handle place order button press
                                },
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                ),
                                child: Text('Place order'),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
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

  // Function to calculate the total price
double calculateTotalPrice(List<ProductPage>? cartItems) {
  if (cartItems != null) {
    double totalPrice = 0;
    for (ProductPage product in cartItems) {
      try {
        totalPrice += double.parse(product.price.replaceAll(',', ''));
      } catch (e) {
        print("Error parsing price: $e");
      }
    }
    return totalPrice;
  }
  return 0;
}
}