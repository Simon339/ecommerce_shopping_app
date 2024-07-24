import 'package:ecommerce_shopping_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Signal Hi-Viz Reflective Cap",
      price: 39.99,
      description: "100% polyester panel structured peak • 6 rows of stitching ",
      imagePath: 'assets/Cup.jpg'
    ),
    Product(
      name: "Mens Maestro Golf Shirt",
      price: 197.39,
      description: "100% polyester birdseye front panel features sublimated ",
      imagePath: 'assets/T-shirt.jpg'
    ),
    Product(
      name: "Mens Short Sleeve Aspen Shirt",
      price: 402.00,
      description: "70% cotton, 30% polyester, Oxford , button-down",
      imagePath: 'assets/Short selvee.jpg'
    ),
    Product(
      name: "Ladies Pro Golf Shirt",
      price: 242.10,
      description: "Ensuring you stay on top of your game with maximum performance.",
      imagePath: 'assets/Ladies Shirt.jpg'
    ),
    Product(
      name: "Ladies Hamilton Jacket",
      price: 665.90,
      description: "Polyester: Extremely durable & crease-resistant.",
      imagePath: 'assets/Ladies Jacket.jpg'
    ),
    Product(
      name: "Mens Hamilton Jacket",
      price: 665.90,
      description: "Polyester: Extremely durable & crease-resistant.",
      imagePath: 'assets/Mens Jacket.jpg'
    ),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
