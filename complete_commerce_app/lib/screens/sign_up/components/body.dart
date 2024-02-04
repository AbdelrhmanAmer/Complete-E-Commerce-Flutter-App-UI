import 'package:flutter/material.dart';

import '../../../components/page_title_and_subtitle.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * .04),
          const PageTitleAndSubtitle(
              title: "Register Account",
              subtitle: "Complete your details or continue\nwith social media"),
        ],
      ),
    );
  }
}
