import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/top_rounded_container.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
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
          ProductImages(images: product.images),
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
                      ProductColors(colors: product.colors),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.screenWidth * .15,
                              left: SizeConfig.screenWidth * .15,
                              bottom: getProportionateScreenHeight(40),
                              top: getProportionateScreenHeight(
                                  kDefaultPadding)),
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
