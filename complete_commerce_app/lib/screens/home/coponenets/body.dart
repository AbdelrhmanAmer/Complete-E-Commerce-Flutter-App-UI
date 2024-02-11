import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: kDefaultPadding,
        left: kDefaultPadding,
        top: kDefaultPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader()
          ],
        ),
      ),
    );
  }
}

