import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../constants.dart';
import 'products/popular_products.dart';
import 'categories/categories.dart';
import 'discount_banner.dart';
import 'header/home_header.dart';
import 'categories/special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          const DiscountBanner(),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          const Categories(),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          const SpecialOffers(),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          const PopularProducts(),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
        ],
      ),
    );
  }
}

