import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';
import 'intro_screen.dart';

class QCart extends StatelessWidget {
  const QCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    );
  }
}