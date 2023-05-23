import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../product_data.dart';
import 'checkout_page.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({Key? key}) : super(key: key);

  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  final List<Product> cartItems = [];

  void addToCart(Product product) {
    cartItems.add(product);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.name} added to cart.'),
        duration: const Duration(seconds: 2),
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CheckoutPage(cartItems: cartItems),
      ),
    );
  }

  Future<void> scanBarcode() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#FF0000', 'Cancel', false, ScanMode.BARCODE);

    // Call your API or perform actions based on the scanned barcode
    // For simplicity, we'll just add a hardcoded product to the cart
    if (barcodeScanRes.isNotEmpty) {
      Product product = Product(
        name: 'Sample Product',
        price: 19.99,
        barcode: barcodeScanRes,
      );
      addToCart(product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan to add item 🛒'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: scanBarcode,
          child: const Text('Click To Scan'),
        ),
      ),
    );
  }
}
