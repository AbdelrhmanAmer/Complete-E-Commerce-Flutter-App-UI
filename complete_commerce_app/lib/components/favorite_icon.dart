import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/product.dart';
import '../size_config.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.product.isFavourite = !widget.product.isFavourite;
        });
      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: getProportionateScreenWidth(25),
        height: getProportionateScreenHeight(25),
        decoration: BoxDecoration(
          color: widget.product.isFavourite
              ? Colors.red.withOpacity(.2)
              : Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: SvgPicture.asset(
            "assets/icons/Heart Icon_2.svg",
            colorFilter: ColorFilter.mode(
              widget.product.isFavourite
                  ? Colors.red
                  : Colors.grey.withOpacity(.7),
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
