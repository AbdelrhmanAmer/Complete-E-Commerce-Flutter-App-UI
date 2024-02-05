import 'package:complete_commerce_app/components/custom_suffix_icon.dart';
import 'package:complete_commerce_app/components/default_button.dart';
import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CompleteProfileFrom extends StatelessWidget {
  CompleteProfileFrom({super.key});

  String fName = "", lName = "", phone = "", address = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        TextFormField(
          decoration: const InputDecoration(
              label: Text("First Name"),
              hintText: "Enter your first name",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg")),
          keyboardType: TextInputType.text,
          onSaved: (newValue) => fName = newValue!,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        TextFormField(
          decoration: const InputDecoration(
              label: Text("Last Name"),
              hintText: "Enter your Last name",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg")),
          keyboardType: TextInputType.text,
          onSaved: (newValue) => lName = newValue!,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        TextFormField(
          decoration: const InputDecoration(
              label: Text("Phone Number"),
              hintText: "Enter your phone number",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg")),
          keyboardType: TextInputType.number,
          onSaved: (newValue) => phone = newValue!,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        TextFormField(
          decoration: const InputDecoration(
              label: Text("Address"),
              hintText: "Enter your address",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg")),
          keyboardType: TextInputType.text,
          onSaved: (newValue) => address = newValue!,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        DefaultButton(text: "Continue", press: (){}),
        
      ]),
    );
  }
}
