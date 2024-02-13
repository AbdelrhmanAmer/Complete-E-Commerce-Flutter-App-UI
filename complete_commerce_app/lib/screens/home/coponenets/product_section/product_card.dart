import 'package:flutter/material.dart';

import '../../../../components/favorite_icon.dart';
import '../../../../constants.dart';
import '../../../../models/product.dart';
import '../../../../size_config.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 1.02,
            child: Container(
              padding:
                  EdgeInsets.all(getProportionateScreenWidth(kDefaultPadding)),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(product.images[0]),
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${product.price}",
                  style: const TextStyle(
                      fontSize: 13,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600)),
              FavouriteIcon(product: product),
            ],
          )
        ],
      ),
    );
  }
}
