import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';
import 'components/body.dart';
import 'components/rounded_icon_btn.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6F9),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding),
            child: RoundedIconBtn(iconData: Icons.arrow_back, press: () {}),
          ),
        ),
        body: const Body(),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
