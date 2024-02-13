import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../section_title.dart';
import 'special_offer_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Special for you", press: () {}),
        SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpecialOfferCard(
                title: "Smartphone",
                numOfBrands: 18,
                image: "assets/images/Image Banner 2.png",
                press: () {},
              ),
              SpecialOfferCard(
                title: "Fashion",
                numOfBrands: 24,
                image: "assets/images/Image Banner 3.png",
                press: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
