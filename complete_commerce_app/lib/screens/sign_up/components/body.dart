import 'package:flutter/material.dart';

import '../../../components/page_title_and_subtitle.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/components/social_card.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * .02),
              const PageTitleAndSubtitle(
                  title: "Register Account",
                  subtitle:
                      "Complete your details or continue\nwith social media"),
              SizedBox(height: SizeConfig.screenHeight * .07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * .07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: "assets/icons/facebook-2.svg", press: () {}),
                  SocialCard(icon: "assets/icons/twitter.svg", press: () {}),
                  SocialCard(icon: "assets/icons/google-icon.svg", press: () {})
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(kDefaultPadding/2)),
              Text(
                "By continuing your confirm that you agree\nwith our Term and Condition.",
                style: TextStyle(fontSize: getProportionateScreenWidth(12)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            ],
          ),
        ),
      ),
    );
  }
}
