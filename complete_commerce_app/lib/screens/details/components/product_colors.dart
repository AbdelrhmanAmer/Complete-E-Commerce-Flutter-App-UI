import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductColors extends StatefulWidget {
  const ProductColors({
    super.key,
    required this.colors,
  });
  final List<Color> colors;

  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  int selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          widget.colors.length, (index) => buildColorDot(index)),
    );
  }

  Widget buildColorDot(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColorIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: kDefaultPadding/2),
        height: 22,
        width: 22,
        padding: selectedColorIndex == index ? const EdgeInsets.all(3) : null,
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedColorIndex == index
                    ? Colors.red
                    : Colors.transparent),
            shape: BoxShape.circle),
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: widget.colors[index], shape: BoxShape.circle)),
      ),
    );
  }
}
