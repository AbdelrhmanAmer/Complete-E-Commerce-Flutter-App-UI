import 'package:complete_commerce_app/components/default_button.dart';
import 'package:complete_commerce_app/constants.dart';
import 'package:complete_commerce_app/components/custom_suffix_icon.dart';
import 'package:flutter/material.dart';

import '../../../components/no_account_text.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String email;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding)),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * .04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: getProportionateScreenHeight(35),
                  color: Colors.black,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * .01),
              const Text(
                "Please Enter your email and we will send\nyou a link to return your account",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * .2),
              Form(
                key: _formKey,
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
              DefaultButton(text: "Continue", press: () {
                if(_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
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
