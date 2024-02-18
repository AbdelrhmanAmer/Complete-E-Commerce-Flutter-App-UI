import 'package:complete_commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/product.dart';
import '../../../size_config.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  product.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(20),
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                  height: getProportionateScreenHeight(kDefaultPadding / 2)),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: product.isFavourite
                        ? Colors.red.withOpacity(.2)
                        : Colors.grey.withOpacity(.2),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  padding: const EdgeInsets.all(kDefaultPadding / 2),
                  child: AspectRatio(
                    aspectRatio: 4 / 2,
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      colorFilter: ColorFilter.mode(
                          product.isFavourite
                              ? Colors.red
                              : Colors.grey.withOpacity(.7),
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    super.key,
    required this.color,
    required this.child,
  });

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2,
        ),
        child: child,
      ),
    );
  }
}
