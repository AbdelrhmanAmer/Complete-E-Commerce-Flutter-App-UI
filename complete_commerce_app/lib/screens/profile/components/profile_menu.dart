import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.preffixIcon,
    required this.press,
  });
  final String title;
  final String preffixIcon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: IconButton(
        style: IconButton.styleFrom(
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultPadding),
            backgroundColor: const Color(0xFFF5F6F9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: press,
        icon: Row(
          children: [
            SvgPicture.asset(preffixIcon,
                colorFilter:
                    const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn)),
            const SizedBox(width: kDefaultPadding),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 13),
          ],
        ),
      ),
    );
  }
}
