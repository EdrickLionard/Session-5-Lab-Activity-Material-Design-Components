import 'package:flutter/material.dart';
import 'package:minimumshop/models/product.dart';
import 'package:flutter/foundation.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    //product 1
    Product(
      name: "KoHitam",
      price: 20000,
      description: "Kopi hitam yang menggunakan 100% Biji Kopi Arabica.",
      imagepath: 'assets/Coffee.png',
    ),
    //product 2
    Product(
      name: "KoHijau",
      price: 28000,
      description: "Perpaduan antara kopi dan daun matcha yang alami.",
      imagepath: 'assets/Matcha.png',
    ), //product 3
    Product(
      name: "KoHi Hehangan",
      price: 18000,
      description: "Kopi panas yang cocok diminum bareng hihang hoheng!",
      imagepath: 'assets/Hot Coffee.png',
    ), //product 4
    Product(
      name: "Kihang Hoheng",
      price: 13000,
      description:
          "Pisang goreng lezat & bergizi yang tentunya cocok dimakan bareng Kohi Hehangan!",
      imagepath: 'assets/Fried Banana.png',
    ),
  ];

  // user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
