import 'package:complete_commerce_app/constants.dart';
import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

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
        child: Column(children: [
          SizedBox(
              height:
                  getProportionateScreenHeight(SizeConfig.screenHeight * .03)),
          const PageTitleAndSubtitle(
            title: "Complete Profile",
            subtitle: "Complete your details or continue\nwith your social media",
          ),
          SizedBox(
            height: getProportionateScreenHeight(SizeConfig.screenHeight * .08),
          ),
          CompleteProfileFrom(),
        ]),
      ),
    );
  }
}
