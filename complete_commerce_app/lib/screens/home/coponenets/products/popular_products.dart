import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../models/product.dart';
import '../../../../size_config.dart';
import '../section_title.dart';
import 'product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Product", press: () {}),
        SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                demoProducts.length,
                (index) => ProductCard(
                    product: demoProducts[index], press: () {}),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
