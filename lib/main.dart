import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/intro_screen.dart';
import 'package:ecommerce_app/pages/qcart.dart';
import 'package:ecommerce_app/pages/welcomePage.dart';
import 'package:ecommerce_app/product_data.dart';
import 'package:ecommerce_app/qrScan.dart';
import 'package:ecommerce_app/screens/home.dart';
import 'package:ecommerce_app/screens/list_cart.dart';
import 'package:ecommerce_app/screens/login.dart';
import 'package:ecommerce_app/screens/payment.dart';
import 'package:ecommerce_app/screens/profile.dart';
import 'package:ecommerce_app/screens/qrScan.dart';
import 'package:ecommerce_app/screens/second.dart';
import 'package:ecommerce_app/utils/application_state.dart';
import 'package:ecommerce_app/utils/custom_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'checkout_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      builder: (context, _) => Consumer<ApplicationState>(
        builder: (context, applicationState, _) {
          Widget child;
          switch (applicationState.loginState) {
            case ApplicationLoginState.loggedOut:
              child = LoginScreen();
              break;
            case ApplicationLoginState.loggedIn:
              child = EcommerceApp();
              break;
            default:
              child = LoginScreen();
          }

          return MaterialApp(
              theme: CustomTheme.getTheme(),
              debugShowCheckedModeBanner: false,
              home: child);
        },
      ),
    ),
  );
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Qcart"),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              boxShadow: CustomTheme.cardShadow),
          child: const TabBar(
              padding: EdgeInsets.symmetric(vertical: 10),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.qr_code_scanner)),
                Tab(icon: Icon(Icons.person)),
              ]),
        ),
        body: TabBarView(children: [
          WelComeScreen(),
          QrScanner(),
          ProfileScreen(),
        ]),
      ),
    );
  }
}
