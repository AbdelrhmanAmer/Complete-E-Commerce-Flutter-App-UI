import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/page_title_and_subtitle.dart';
import 'complete_profile_form.dart';

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
              SizedBox(
                  height: getProportionateScreenHeight(
                      SizeConfig.screenHeight * .02)),
              const PageTitleAndSubtitle(
                title: "Complete Profile",
                subtitle:
                    "Complete your details or continue\nwith your social media",
              ),
              SizedBox(
                height:
                    getProportionateScreenHeight(SizeConfig.screenHeight * .05),
              ),
              CompleteProfileFrom(),
              SizedBox(
                  height: getProportionateScreenHeight(kDefaultPadding)),
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
