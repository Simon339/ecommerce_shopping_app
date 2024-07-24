import 'package:ecommerce_shopping_app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text(
                  "Are you sure want to remove this Item from your Cart?"),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removeFromCart(product);
                  },
                  child: Text("Yes"),
                ),
              ],
            ));
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context, 
      builder: (context) => const AlertDialog(
        content: 
        Text("User wants to pay! Conntect this app to your payment backend"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart"),
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty ? Center(child: const Text("Your cart is empty, let's fill it😅...")) : ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final item = cart[index];

                  return ListTile(
                    title: Text(item.name),
                    subtitle: Text(item.price.toStringAsFixed(2)),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => removeItemFromCart(context, item),
                    ),
                  );
                }),
          ),


          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
                onTap: () => payButtonPressed(context),
                child: const Text("Pay Now")),
          )
        ],
      ),
    );
  }
}
