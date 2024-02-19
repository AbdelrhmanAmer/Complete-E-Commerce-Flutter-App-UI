import 'package:flutter/material.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            Text("4 items",
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
      body: const Body(),
    ));
  }
}
