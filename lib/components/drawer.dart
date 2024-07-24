import 'package:ecommerce_shopping_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shopping_cart,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              // const SizedBox(height: 25),

              MyListTile(
                  icon: Icons.home,
                  text: 'S H O P',
                  onTap: () => Navigator.pop(context)),

              MyListTile(
                  icon: Icons.shopping_cart_checkout,
                  text: 'C A R T',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                icon: Icons.logout_rounded, 
                text: 'E X I T', 
                onTap: () => Navigator.pushNamed(
                  context, '/intro_page'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
