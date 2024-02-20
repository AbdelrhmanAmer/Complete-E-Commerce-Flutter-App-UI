import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    required this.image,
    required this.press,
  });
  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 100,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(image),
              ),
            ),
            Positioned(
              right: -5,
              bottom: -2,
              child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/Camera Icon.svg",
                    colorFilter: ColorFilter.mode(
                        Colors.grey.shade700, BlendMode.srcIn),
                  ),
                  onPressed: press,
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.grey.shade200)),
            )
          ],
        ),
      ),
    );
  }
}
