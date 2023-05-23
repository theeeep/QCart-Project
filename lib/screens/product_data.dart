import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String barcode;

  Product({required this.name, required this.price, required this.barcode});
}

List<Product> products = [
  Product(
    name: 'Product 1',
    price: 9.99,
    barcode: '123456789',
  ),
  Product(
    name: 'Product 2',
    price: 19.99,
    barcode: '987654321',
  ),
  // Add more products here...
];
