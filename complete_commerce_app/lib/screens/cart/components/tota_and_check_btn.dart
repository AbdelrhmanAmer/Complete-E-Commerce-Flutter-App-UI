import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class TotalAndCheckBtn extends StatelessWidget {
  const TotalAndCheckBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: const TextSpan(
            text: "Total\n",
            style: TextStyle(color: kTextColor, height: 1.5),
            children: [
              TextSpan(
                  text: "\$337.15",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(190),
          child: DefaultButton(text: "Check Out", press: () {}),
        ),
      ],
    );
  }
}