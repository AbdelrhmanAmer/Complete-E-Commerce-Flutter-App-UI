import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xFF4A3298).withOpacity(.8),
              const Color(0xFF4A3298),
            ]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: RichText(
            text: TextSpan(
              text: "A Summer Surprise\n",
              style: TextStyle(fontSize: getProportionateScreenWidth(11)),
              children: [
                TextSpan(
                  text: "Cashback 20%",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: -30,
          top: -75,
          child: Container(
            height: getProportionateScreenHeight(150),
            width: getProportionateScreenWidth(150),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(150)),
          ),
        ),
        Positioned(
          bottom: -100,
          left: 10,
          child: Container(
            height: getProportionateScreenHeight(150),
            width: getProportionateScreenWidth(150),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(150)),
          ),
        ),
      ],
    );
  }
}
