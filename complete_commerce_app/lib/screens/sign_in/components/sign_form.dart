import 'package:complete_commerce_app/screens/forgot_password%20/forgot_password_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'custom_suffix_icon.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _authData = {"email": "", "password": ""};
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailField(),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding * 2)),
          buildPasswordField(),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildRemeberMe(),
              const Spacer(),
              buildForgotPasswordButton()
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              })
        ],
      ),
    );
  }

  TextButton buildForgotPasswordButton() {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context ,ForgotPasswordScreen.routeName);
      },
      style: TextButton.styleFrom(
        textStyle: const TextStyle(decoration: TextDecoration.underline),
      ),
      child: const Text(
        "Forgot Passowrd?",
        style: TextStyle(color: kTextColor),
      ),
    );
  }

  Row buildRemeberMe() {
    return Row(
      children: [
        Checkbox(
          value: rememberMe,
          onChanged: (newValue) {
            setState(() {
              if (newValue != null) {
                rememberMe = newValue;
              }
            });
          },
          activeColor: kPrimaryColor,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        const Text(
          "Remember me!",
          style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
        ),
      ],
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;
      },
      onSaved: (newValue) => _authData['password'] = newValue!,
      obscureText: true,
      decoration: const InputDecoration(
        label: Text("Password"),
        hintText: "Enter your password",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
      keyboardType: TextInputType.text,
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      onSaved: (newValue) => _authData['email'] = newValue!,
      decoration: const InputDecoration(
        label: Text("Email"),
        hintText: "Enter you email",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
