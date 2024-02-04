import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

// ignore: must_be_immutable
class SignUpForm extends StatelessWidget {
  String email = "", password = "", confirmPassword = "";
  final _formKey = GlobalKey<FormState>();

  SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailField(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding * 2)),
            buildPasswordField(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding * 2)),
            buildConfirmPasswordField(),
            SizedBox(height: getProportionateScreenHeight(kDefaultPadding * 2)),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                }),
          ],
        ));
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
      onSaved: (value) => confirmPassword = value!,
    );
  }
}
