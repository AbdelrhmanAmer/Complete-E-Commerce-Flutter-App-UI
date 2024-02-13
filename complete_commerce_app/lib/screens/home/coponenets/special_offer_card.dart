import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.title,
    required this.image,
    required this.press,
    this.numOfBrands = 0,
  });
  final String title, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding/2),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            SizedBox(
              width: SizeConfig.screenWidth * .65,
              height: getProportionateScreenHeight(120),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Stack(
                  children: [
                    Image.asset(image),
                    Container(
                      width: SizeConfig.screenWidth * .65,
                      height: getProportionateScreenHeight(120),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black45.withOpacity(.5),
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical:
                            getProportionateScreenHeight(kDefaultPadding / 2),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title\n",
                              style: const TextStyle(
                                height: 1.5,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: "$numOfBrands Brands",
                              style: const TextStyle(
                                height: 1.5,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
