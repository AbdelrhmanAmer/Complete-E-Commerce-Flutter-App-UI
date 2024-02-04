import 'package:complete_commerce_app/components/custom_suffix_icon.dart';
import 'package:complete_commerce_app/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../components/page_title_and_subtitle.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String email = "";
  String password = "";
  String confirm_password = "";

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * .04),
              const PageTitleAndSubtitle(
                  title: "Register Account",
                  subtitle:
                      "Complete your details or continue\nwith social media"),
              SizedBox(height: SizeConfig.screenHeight * .08),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildEmailField(),
                      SizedBox(
                          height: getProportionateScreenHeight(
                              kDefaultPadding * 2)),
                      buildPasswordField(),
                      SizedBox(
                          height: getProportionateScreenHeight(
                              kDefaultPadding * 2)),
                      buildConfirmPasswordField(),
                      SizedBox(
                          height: getProportionateScreenHeight(
                              kDefaultPadding * 2)),
                      DefaultButton(
                          text: "Continue",
                          press: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
                          }),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Email"),
        hintText: "Enter your email",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      onSaved: (newEmail) => email = newEmail!,
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Password"),
        hintText: "Enter your password",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
      keyboardType: TextInputType.text,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;
      },
      onChanged: (_) => _formKey.currentState!.save(),
      onSaved: (newVal) => password = newVal!,
    );
  }

  TextFormField buildConfirmPasswordField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Confirm Password"),
        hintText: "Re-enter your password",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (password != value) {
          return "passwords does not match!";
        }
        return null;
      },
      onSaved: (value) => confirm_password = value!,
    );
  }
}
