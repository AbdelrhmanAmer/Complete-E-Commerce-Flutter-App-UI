import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.hintText,
    required this.widthPercentage,
  });
  final String hintText;
  final double widthPercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * widthPercentage,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kSecondaryColor.withOpacity(.1),
      ),
      child: TextField(
        onChanged: (value) {
          // search value
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding),
              vertical: getProportionateScreenWidth(12)),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}