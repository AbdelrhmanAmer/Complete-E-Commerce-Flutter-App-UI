import 'package:flutter/material.dart';

import '../size_config.dart';

class PageTitleAndSubtitle extends StatelessWidget {
  const PageTitleAndSubtitle({
    super.key,
    required this.title,
    this.subtitle  = "",
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: getProportionateScreenHeight(35),
          color: Colors.black,
        ),
      ),
      SizedBox(height: SizeConfig.screenHeight * .01),
      Text(
        subtitle,
        // "Sign in with your email and password\nor continue with social media",
        style: TextStyle(fontSize: getProportionateScreenWidth(14)),
        textAlign: TextAlign.center,
      )
    ]);
  }
}