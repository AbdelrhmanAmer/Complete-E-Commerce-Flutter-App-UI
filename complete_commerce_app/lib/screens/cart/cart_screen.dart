import 'package:flutter/material.dart';

import 'components/body.dart';
import '../../models/cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          Text("${demoCarts.length} items",
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
