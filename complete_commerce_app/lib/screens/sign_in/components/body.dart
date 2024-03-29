import 'package:flutter/material.dart';

import '../../../components/no_account_text.dart';
import '../../../components/page_title_and_subtitle.dart';
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
                const PageTitleAndSubtitle(
                    title: "Sign In",
                    subtitle:
                        "Sign in with your email and password\nor continue with social media"),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
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
                const NoAccountText(),
                SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
