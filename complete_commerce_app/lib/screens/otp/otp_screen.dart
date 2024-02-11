import 'package:flutter/material.dart';

import 'components/body.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/OTP";
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
        centerTitle: true,
      ),
      body: const Body(),
    ));
  }
}
