import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/cart.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: .88,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(kDefaultPadding)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.product.title,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 2,
              ),
              SizedBox(height: getProportionateScreenHeight(kDefaultPadding / 2)),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: "\$${cart.product.price}   ",
                    style: const TextStyle(color: kPrimaryColor, fontSize: 12),
                  ),
                  TextSpan(
                    text: "x${cart.numOfItems}",
                    style: const TextStyle(color: kTextColor, fontSize: 12),
                  ),
                ],
              ))
            ],
          ),
        )
      ],
    );
  }
}
