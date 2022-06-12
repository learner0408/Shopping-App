import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavourite;

  Product(
      {@required this.id = "",
      @required this.title = "",
      @required this.description = "",
      @required this.price = 0.0,
      @required this.imageUrl = "",
      @required this.isFavourite = false});
}
