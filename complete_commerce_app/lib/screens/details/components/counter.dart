import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'rounded_icon_btn.dart';

class Counter extends StatefulWidget {
  const Counter({
    super.key,
  });

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedIconBtn(
            iconData: Icons.remove,
            press: () {
              setState(() {
                if (counter > 1) {
                  counter--;
                }
              });
            },
            elevation: 2),
        SizedBox(width: getProportionateScreenHeight(kDefaultPadding)),
        Text(
          "$counter",
          style: const TextStyle(fontSize: 17),
        ),
        SizedBox(width: getProportionateScreenHeight(kDefaultPadding)),
        RoundedIconBtn(
            iconData: Icons.add,
            press: () {
              setState(() {
                counter++;
              });
            },
            elevation: 2)
      ],
    );
  }
}
