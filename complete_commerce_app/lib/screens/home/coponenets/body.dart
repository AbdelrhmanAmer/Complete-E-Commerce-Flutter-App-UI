import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import '../../../constants.dart';
import 'app_bar_icon_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: kDefaultPadding,
        left: kDefaultPadding,
        top: kDefaultPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: SizeConfig.screenWidth * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                      hintText: "Search product",
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(kDefaultPadding),
                          vertical: getProportionateScreenWidth(12)
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                AppBarIconButton(
                    icon: "assets/icons/Cart Icon.svg", press: () {}),
                AppBarIconButton(icon: "assets/icons/Bell.svg", press: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
