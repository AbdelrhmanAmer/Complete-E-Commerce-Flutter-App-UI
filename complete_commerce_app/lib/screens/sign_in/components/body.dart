import 'package:complete_commerce_app/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'custom_suffix_icon.dart';

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
                  fontWeight: FontWeight.w800,
                  fontSize: getProportionateScreenHeight(35),
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              const Text(
                "Sign in with your email and password\nor continue with social media",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: getProportionateScreenHeight(kDefaultPadding * 2)),
              const SignInForm(),
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _authData = {"email": "", "password": ""};

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
