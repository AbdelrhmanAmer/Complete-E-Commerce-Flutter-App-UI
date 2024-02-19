import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
import 'product_images.dart';
import 'title_and_description.dart';

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
        TitleAndDescription(product: product),
      ],
    );
  }
}


