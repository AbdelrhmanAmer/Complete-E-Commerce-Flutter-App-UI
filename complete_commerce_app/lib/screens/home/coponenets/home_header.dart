import 'package:flutter/material.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchField(
          hintText: "Search Product",
          widthPercentage: .6,
        ),
        IconBtnWithCounter(
          icon: "assets/icons/Cart Icon.svg",
          press: () {},
          numOfItems: 0,
        ),
        IconBtnWithCounter(
          icon: "assets/icons/Bell.svg",
          press: () {},
          numOfItems: 3,
        ),
      ],
    );
  }
}
