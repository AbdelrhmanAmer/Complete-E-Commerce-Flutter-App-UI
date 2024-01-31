import 'package:complete_commerce_app/constants.dart';
import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              const SizedBox(height: kDefaultPadding / 2),
              const Text(
                "Sign in with your email and password\nor continue with social media",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kDefaultPadding),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        TextFormField(
          decoration: InputDecoration(
            label: Text("Email"),
            hintText: "Enter you email"
          )
        )
      ]),
    );
  }
}
