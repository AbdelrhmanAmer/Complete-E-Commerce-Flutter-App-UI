import 'package:flutter/material.dart';

import 'screens/profile/profile_screen.dart';
// import 'screens/splash/splash_screen.dart';
import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}
