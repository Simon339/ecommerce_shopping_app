import 'package:ecommerce_shopping_app/pages/cart_page.dart';
import 'package:ecommerce_shopping_app/pages/intro_page.dart';
import 'package:ecommerce_shopping_app/pages/shop_page.dart';
import 'package:ecommerce_shopping_app/theme/lightmode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page':(context) => const IntroPage(),
        '/shop_page':(context) => const ShopPage(),
        '/cart_page':(context) => const Cart_Page(),
      },
    );
  }
}

