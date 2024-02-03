import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_form.dart';
import 'social_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: kDefaultPadding),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: getProportionateScreenHeight(35),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: kDefaultPadding / 2),
                const Text(
                  "Sign in with your email and password\nor continue with social media",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                    height: getProportionateScreenHeight(kDefaultPadding * 2)),
                const SignInForm(),
                const SizedBox(height: kDefaultPadding * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
