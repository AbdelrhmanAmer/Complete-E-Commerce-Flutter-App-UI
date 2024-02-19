import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/top_rounded_container.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
import 'counter.dart';
import 'product_colors.dart';
import 'product_images.dart';
import 'product_description.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product),
                SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
                TopRoundedContainer(
                  color: const Color(0xFFF5F6F9),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: kDefaultPadding,
                          left: kDefaultPadding,
                          top: kDefaultPadding/2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductColors(colors: product.colors),
                            const Counter()
                          ],
                        ),
                      ),
                      SizedBox(
                          height:
                              getProportionateScreenHeight(kDefaultPadding)),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding,
                            horizontal: kDefaultPadding*2,
                          ),
                          child: DefaultButton(
                            press: () {},
                            text: "Add To Card",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
