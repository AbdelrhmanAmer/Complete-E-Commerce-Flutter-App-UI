import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'profile_image.dart';
import 'profile_menu.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(image: "assets/images/me1.png", press: () {}),
          const SizedBox(height: kDefaultPadding),
          ProfileMenu(
            title: 'My Acouunt',
            preffixIcon: "assets/icons/User Icon.svg",
            press: () {},
          ),
          ProfileMenu(
            title: 'Notifications',
            preffixIcon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            title: 'Settings',
            preffixIcon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            title: 'Help Center',
            preffixIcon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            title: 'Log Out',
            preffixIcon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
