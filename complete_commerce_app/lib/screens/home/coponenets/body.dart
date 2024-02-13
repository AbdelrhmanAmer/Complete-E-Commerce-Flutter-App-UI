import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../size_config.dart';
import '../../../constants.dart';
import 'product_section/product_card.dart';
import 'section_title.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: kDefaultPadding,
        left: kDefaultPadding,
        top: kDefaultPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            const Categories(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            SectionTitle(title: "Popular Product", press: () {}),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            ProductCard(product: demoProducts[0])
          ],
        ),
      ),
    );
  }
}
