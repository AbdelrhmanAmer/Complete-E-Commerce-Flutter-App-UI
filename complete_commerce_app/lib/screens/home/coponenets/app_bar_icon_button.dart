import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton({
    super.key,
    required this.icon,
    required this.press,
    required this.numOfNotifications,
  });
  final String icon;
  final VoidCallback press;
  final int numOfNotifications;

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
          numOfNotifications == 0 ? Container() : Positioned(
            right: 0,
            top: -4,
            child: Container(
              alignment: Alignment.center,
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5)),
              child: Center(
                  child: Text(
                "$numOfNotifications",
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
