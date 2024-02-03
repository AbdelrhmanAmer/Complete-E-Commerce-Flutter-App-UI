import 'package:complete_commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key, required this.icon, required this.press,
  });
  final String icon;
  final VoidCallback press;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding/2),
      child: InkWell(
        onTap: press,
        child: Container(
          height: 40,
          width: 40,
          decoration:BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.withOpacity(.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(icon),
          ),
        ),
      ),
    );
  }
}
