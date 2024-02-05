import 'package:complete_commerce_app/components/custom_suffix_icon.dart';
import 'package:complete_commerce_app/components/default_button.dart';
import 'package:complete_commerce_app/constants.dart';
import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CompleteProfileFrom extends StatelessWidget {
  CompleteProfileFrom({super.key});

  String fName = "", lName = "", phone = "", address = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        TextFormField(
          initialValue: fName == "" ? null : fName,
          decoration: const InputDecoration(
              label: Text("First Name"),
              hintText: "Enter your first name",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg")),
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: (newValue) => fName = newValue!,
          validator: (value) {
            if (value!.isEmpty) {
              return kNameNullError;
            }
            return null;
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.03),
        TextFormField(
          initialValue: lName == "" ? null : lName,
          decoration: const InputDecoration(
              label: Text("Last Name"),
              hintText: "Enter your Last name",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg")),
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: (newValue) => lName = newValue!,
          validator: (value) {
            if (value!.isEmpty) {
              return kNameNullError;
            }
            return null;
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.03),
        TextFormField(
          initialValue: phone == "" ? null : phone,
          decoration: const InputDecoration(
              label: Text("Phone Number"),
              hintText: "Enter your phone number",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg")),
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: (newValue) => phone = newValue!,
          validator: (value) {
            if (value!.isEmpty) {
              return kPhoneNumberNullError;
            } else if (value.length != 11) {
              return kShortPhoneNumberError;
            }
            return null;
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.03),
        TextFormField(
          initialValue: address == "" ? null : address,
          decoration: const InputDecoration(
              label: Text("Address"),
              hintText: "Enter your address",
              suffixIcon:
                  CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg")),
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: (newValue) => address = newValue!,
          validator: (value) {
            if (value!.isEmpty) {
              return kAddressNullError;
            }
            return null;
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            }),
      ]),
    );
  }
}
