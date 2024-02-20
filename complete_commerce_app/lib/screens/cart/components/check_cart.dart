import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class CheckCart extends StatelessWidget {
  const CheckCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenHeight(15),
      ),
      height: getProportionateScreenHeight(174),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(40),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Color(0xFFF5F6F9)),
                child: SvgPicture.asset(
                  "assets/icons/receipt.svg",
                  colorFilter:
                      const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Add voucher code",
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: kDefaultPadding / 3),
                    Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
