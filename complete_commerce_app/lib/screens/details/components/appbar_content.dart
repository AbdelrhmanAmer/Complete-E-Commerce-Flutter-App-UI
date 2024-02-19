import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'rating_box.dart';
import 'rounded_icon_btn.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.preferredSize,
    required super.child,
  });
}

class AppBarContent extends StatelessWidget {
  const AppBarContent({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(top: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: RoundedIconBtn(
                iconData: Icons.arrow_back,
                press: () => Navigator.pop(context)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: RatingBox(
              rating: rating,
              icon: "assets/icons/Star Icon.svg",
            ),
          )
        ],
      ),
    );
  }
}
