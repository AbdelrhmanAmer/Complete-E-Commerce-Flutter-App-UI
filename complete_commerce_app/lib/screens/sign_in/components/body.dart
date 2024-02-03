import 'package:flutter/material.dart';

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
                SizedBox(height: SizeConfig.screenHeight * .04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: getProportionateScreenHeight(35),
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * .01),
                const Text(
                  "Sign in with your email and password\nor continue with social media",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
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
                ),
                SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          color: kPrimaryColor),
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
