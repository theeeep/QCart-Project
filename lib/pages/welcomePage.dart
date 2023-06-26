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
              'This Page will help you to keep track of your expenses while shopping 🛍️',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
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
                color: Color.fromARGB(255, 138, 40, 163),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '1️⃣ Scan the barcode / QrCode ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 100, 141),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '2️⃣ Add Product Item to the Cart 🛒',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 100, 141),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '3️⃣ Review Item List & Proceed to Check Out',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 100, 141),
              ),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
