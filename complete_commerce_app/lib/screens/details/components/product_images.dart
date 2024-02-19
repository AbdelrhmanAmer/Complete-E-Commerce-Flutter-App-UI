import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';


class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(200),
          child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.product.images[selectedIndex])),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.product.images.length,
            (index) => buildSmallPreview(index),
          ),
        ),
      ],
    );
  }

  Widget buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: kDefaultPadding / 2),
        padding: const EdgeInsets.all(6),
        height: getProportionateScreenHeight(50),
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? kPrimaryColor
                    : Colors.transparent),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(widget.product.images[index]),
        ),
      ),
    );
  }
}
