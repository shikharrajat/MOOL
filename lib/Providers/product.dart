import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final int id;
  final String title, description,details;
  final List<String> images;

  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,

    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.details,
  });
}

// Our demo Products

