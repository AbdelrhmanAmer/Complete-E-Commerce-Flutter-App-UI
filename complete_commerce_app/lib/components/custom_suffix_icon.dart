import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size_config.dart';


class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key,
    required this.svgIcon,
  });
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          0,
          getProportionateScreenWidth(kDefaultPadding),
          getProportionateScreenWidth(kDefaultPadding),
          getProportionateScreenWidth(kDefaultPadding)),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenHeight(kDefaultPadding),
      ),
    );
  }
}
