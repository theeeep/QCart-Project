import 'package:ecommerce_app/product_data.dart';
import 'package:flutter/material.dart';


class CheckoutPage extends StatelessWidget {
  final List<Product> cartItems;

  const CheckoutPage({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cart Summary',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final product = cartItems[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle:
                      Text('Price: \$${product.price.toStringAsFixed(2)}'),
                );
              },
            ),
            SizedBox(height: 16),
            Text(
              'Total: \$${_calculateTotalPrice().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement payment logic
                // You can navigate to a success page or perform other actions here
              },
              child: Text('Proceed to Payment'),
            ),
          ],
        ),
      ),
    );
  }

  double _calculateTotalPrice() {
    return cartItems.fold(0, (sum, product) => sum + product.price);
  }
}
