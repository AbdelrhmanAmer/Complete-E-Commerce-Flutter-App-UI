import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key,
    required this.icon,
    required this.press,
    required this.numOfItems,
  });
  final String icon;
  final VoidCallback press;
  final int numOfItems;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: getProportionateScreenHeight(60),
            width: getProportionateScreenWidth(50),
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(.1), shape: BoxShape.circle),
            child: SvgPicture.asset(icon),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              top: -4,
              child: Container(
                alignment: Alignment.center,
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.5)),
                child: Center(
                    child: Text(
                  "$numOfItems",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenHeight(11),
                      height: 1,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
        ],
      ),
    );
  }
}
