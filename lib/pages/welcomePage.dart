import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class WelComeScreen extends StatelessWidget {
  const WelComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // big logo
            Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                top: 80,
                bottom: 20,
              ),
              child: Image.asset('lib/images/welcome.png'),
            ),

            // we deliver groceries at your doorstep
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                'Welcome To Qcart',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),

            // groceree gives you fresh vegetables and fruits
            Text(
              'Helping buyers and sellers to attain their goals',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 18),
            Text(
              '3 simple steps!!',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 163, 40, 155),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '1️⃣-->Scan the barcode / QrCode on the Product Tag',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 6, 59, 72),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              '2️⃣---> Add Product Item to the Cart 🛒',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 148, 18, 70),
              ),
            ),
            const SizedBox(height: 18),
            Text(
              '3️⃣---->Review Item List & Proceed to Check Out',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 100, 17, 130),
              ),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
