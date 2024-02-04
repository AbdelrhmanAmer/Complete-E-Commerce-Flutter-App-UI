import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    this.image= "",
    this.text ="Default Text."
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: kDefaultPadding / 2),
        Text(text, style: const TextStyle(color: kTextColor),textAlign: TextAlign.center,),
        const Spacer(flex: 2,),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}