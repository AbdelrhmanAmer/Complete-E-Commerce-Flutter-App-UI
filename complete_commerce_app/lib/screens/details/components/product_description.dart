import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';


class ProductDescription extends StatefulWidget {
  const ProductDescription({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool isDetailsOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            widget.product.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(20),
                color: Colors.black87),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(kDefaultPadding / 3)),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 35,
            decoration: BoxDecoration(
              color: widget.product.isFavourite
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
                    widget.product.isFavourite
                        ? Colors.red
                        : Colors.grey.withOpacity(.7),
                    BlendMode.srcIn),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(kDefaultPadding),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(widget.product.description,
              maxLines: isDetailsOn ? null : 3,
              overflow:
                  isDetailsOn ? TextOverflow.visible : TextOverflow.ellipsis),
        ),
        SizedBox(height: getProportionateScreenHeight(kDefaultPadding / 2)),
        GestureDetector(
          onTap: () {
            setState(() {
              isDetailsOn = !isDetailsOn;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  isDetailsOn ? "See Less Details" : "See More Details",
                  style: const TextStyle(color: kPrimaryColor),
                ),
                const SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Icon(
                  isDetailsOn ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
