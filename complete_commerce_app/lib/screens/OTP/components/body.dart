import 'package:complete_commerce_app/components/default_button.dart';
import 'package:complete_commerce_app/components/page_title_and_subtitle.dart';
import 'package:complete_commerce_app/constants.dart';
import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

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
            SizedBox(height: SizeConfig.screenHeight * .05),
            const PageTitleAndSubtitle(title: "OTP Verification"),
            const Text("We sent your code to +1 898 860 ***"),
            buildTimer(),
            SizedBox(height: SizeConfig.screenHeight * .15),
            const OTPForm(),
            SizedBox(height: SizeConfig.screenHeight * .1),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(),
              child: const Text(
                "Resend OTP Code",
                style: TextStyle(
                  color: kTextColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (ctx, value, child) {
            return Text(
              "00:${value.toInt()}",
              style: const TextStyle(color: kPrimaryColor),
            );
          },
          onEnd: () {},
        ),
      ],
    );
  }
}
