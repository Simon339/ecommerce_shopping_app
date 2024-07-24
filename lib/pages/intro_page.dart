import 'package:ecommerce_shopping_app/components/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_shopping_cart ,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            const Text(
              "S K Y C L O T H I N G",
              style: TextStyle(
                fontWeight:  FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 25),

            Text(
              "Premium Quality Products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 25),
            
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
              )
            ),
          ],
        ),
      ),
    );
  }
}