import 'package:flutter/material.dart';

import '../../../components/top_rounded_container.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
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
    return Column(
      children: [
        ProductImages(product: product),
        SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductDescription(product: product),
        ),
      ],
    );
  }
}
