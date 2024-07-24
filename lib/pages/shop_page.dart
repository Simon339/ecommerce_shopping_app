import 'package:ecommerce_shopping_app/components/drawer.dart';
import 'package:ecommerce_shopping_app/components/product_tile.dart';
import 'package:ecommerce_shopping_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("SKY CLOTHING"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'), 
            icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: 
      ListView(
        children: [
          const SizedBox(height: 25,),
          Center(
            child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          SizedBox(
        height: 600,
        child: ListView.builder(
            itemCount: products.length,
            scrollDirection:  Axis.horizontal,
            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) {
              final product = products[index];
              return MyProductTile(product: product);
            }),
      ),
        ],
      ),
    );
  }
}
