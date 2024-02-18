import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class RatingBox extends StatelessWidget {
  const RatingBox({
    super.key,
    required this.rating,
    required this.icon,
  });
  final double rating;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "$rating",
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(width: 5),
        SvgPicture.asset("assets/icons/Star Icon.svg"),
      ]),
    );
  }
}
