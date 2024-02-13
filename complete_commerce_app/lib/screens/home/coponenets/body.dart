import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../constants.dart';
import 'special_offer_card.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'section_title.dart';

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
            SizedBox(height: getProportionateScreenHeight(30)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            SectionTitle(title: "Special for you", press: () {}),
            SizedBox(height: getProportionateScreenHeight(30)),
            SpecialOfferCard(
              title: "Smartphone",
              subtitle: "18 Brands",
              image: "assets/images/Image Banner 2.png",
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}

