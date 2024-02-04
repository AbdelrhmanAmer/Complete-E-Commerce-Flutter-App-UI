import 'package:complete_commerce_app/components/default_button.dart';
import 'package:complete_commerce_app/components/page_title_and_subtitle.dart';
import 'package:complete_commerce_app/constants.dart';
import 'package:complete_commerce_app/components/custom_suffix_icon.dart';
import 'package:flutter/material.dart';

import '../../../components/no_account_text.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    String email;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding)),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * .04),
              const PageTitleAndSubtitle(
                  title: "Forgot Password",
                  subtitle:
                      "Please Enter your email and we will send\nyou a link to return your account"),
              SizedBox(height: SizeConfig.screenHeight * .2),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("email"),
                        hintText: "Enter your email",
                        suffixIcon: CustomSuffixIcon(
                          svgIcon: "assets/icons/Mail.svg",
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return kEmailNullError;
                        } else if (!emailValidatorRegExp.hasMatch(value)) {
                          return kInvalidEmailError;
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value!;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * .15),
              DefaultButton(
                  text: "Continue",
                  press: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }
                  }),
              SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
              const NoAccountText(),
              SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
            ],
          ),
        ),
      ),
    );
  }
}
