import './product.dart';
import 'package:flutter/material.dart';


class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 1,
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
      ],
      title: "Wireless Controller for PS4™",
      price: 64.99,
      description:  "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
      details: "weight:50 gm",
    ),
    Product(
      id: 2,
      images: [
        "assets/images/Image Popular Product 2.png",
      ],

      title: "Nike Sport White - Man Pant",
      price: 50.5,
      description:  "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isPopular: true,
      details: "weight:50 gm",
    ),
    Product(
      id: 3,
      images: [
        "assets/images/glove.png",
      ],

      title: "Gloves XC Omega - Polygon",
      price: 36.55,
      description:  "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: true,
      isPopular: true,
      details: "weight:50 gm",
    ),
    Product(
      id: 4,
      images: [
        "assets/images/wireless headset.png",
      ],

      title: "Logitech Head",
      price: 20.20,
      description:  "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
      rating: 4.1,
      isFavourite: true,
      details: "weight:50 gm",
    ),
  ];

  Product findById(int id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

}
