import 'package:complete_commerce_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * .04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * .4,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        SizedBox(height: SizeConfig.screenHeight * .08),
        Text(
          "Login Success",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(30)),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * .6,
          child: DefaultButton(
            text: "Back to home",
            press: () =>
                Navigator.pushReplacementNamed(context, HomeScreen.routeName),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
