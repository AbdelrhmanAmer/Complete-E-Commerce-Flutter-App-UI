import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });
  final String icon, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: press,
            borderRadius: BorderRadius.circular(10),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor.withOpacity(.2),
                ),
                child: SvgPicture.asset(
                  icon,
                  colorFilter:
                      const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding / 4)),
          Text(text, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
