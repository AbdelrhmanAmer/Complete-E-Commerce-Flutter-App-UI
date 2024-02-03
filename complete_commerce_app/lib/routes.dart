import 'package:complete_commerce_app/screens/forgot_password%20/forgot_password_screen.dart';
import 'package:complete_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:complete_commerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context) => const SplashScreen(),
  SignInScreen.routeName:(context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
};