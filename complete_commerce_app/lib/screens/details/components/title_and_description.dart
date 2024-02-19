import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/top_rounded_container.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return TopRoundedContainer(
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
    );
  }
}
