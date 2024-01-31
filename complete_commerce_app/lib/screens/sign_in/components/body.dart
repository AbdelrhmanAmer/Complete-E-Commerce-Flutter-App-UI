import 'package:complete_commerce_app/constants.dart';
import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding),
          Text(
            "Welcome Back",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenHeight(30),
              color: Colors.black,
            ),
          ),
          const SizedBox(height: kDefaultPadding/2),
          const Text(
            "Sign in with your email and password\nor continue with social media",
            style: TextStyle(),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
