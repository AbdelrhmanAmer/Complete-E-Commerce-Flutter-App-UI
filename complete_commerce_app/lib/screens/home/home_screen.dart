import 'package:flutter/material.dart';

import '../../enums.dart';
import '../../components/custom_bottom_nav_bar.dart';
import 'coponenets/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    ));
  }
}
