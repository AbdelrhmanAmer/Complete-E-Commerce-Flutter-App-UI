import 'package:complete_commerce_app/components/page_title_and_subtitle.dart';
import 'package:complete_commerce_app/constants.dart';
import 'package:flutter/material.dart';

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
            PageTitleAndSubtitle(
              title: "OTP Verification",
              subtitle:
                  "we sent your code to +1 898 860 ***\nThis code will expired on 00:30",
            )
          ],
        )),
      ),
    );
  }
}
