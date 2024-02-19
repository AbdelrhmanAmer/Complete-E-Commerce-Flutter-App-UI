import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'rounded_icon_btn.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedIconBtn(
            iconData: Icons.remove, press: () {}, elevation: 2),
        SizedBox(
            width: getProportionateScreenHeight(kDefaultPadding)),
        RoundedIconBtn(iconData: Icons.add, press: () {}, elevation: 2)
      ],
    );
  }
}
