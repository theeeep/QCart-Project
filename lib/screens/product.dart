import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../utils/custom_theme.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool addButtonload = false;

  void onAddToCart() async {
    setState(() {
      addButtonload = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl:
                                  "https://images.unsplash.com/photo-1555529771-122e5d9f2341?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            offset: Offset(1, 3),
                            color: Colors.grey)
                      ]),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 35,
                right: 35,
                child: Container(
                  decoration: const ShapeDecoration(
                      color: CustomTheme.qPrimaryColor,
                      shape: CircleBorder(),
                      shadows: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1, 3))
                      ]),
                  child: IconButton(
                    icon: Icon(Icons.share),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.headlineLarge!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 22),
                    child: Text("title"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [Text("MRP: "), Text("\$price")],
                    ),
                  ),
                  CustomButton(
                      text: "Add to Cart",
                      onPress: onAddToCart,
                      loading: addButtonload),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text("About the Items",
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("the item description",
                        style: Theme.of(context).textTheme.bodySmall),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
