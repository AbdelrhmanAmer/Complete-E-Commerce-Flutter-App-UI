import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 200;
  static double screenHeight = 200;
  static double defaultSize = 100;
  static Orientation orientation = Orientation.landscape;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  double getProportionateScreenHeight(double inputHeight){
    double screenHeight = SizeConfig.screenHeight;
    return (inputHeight / 812.0) * screenHeight;
  }
  double getProportionateScreenWidth(double inputWidth){
    double screenWidth = SizeConfig.screenWidth;
    return (inputWidth / 375.0) * screenWidth;
  }
  
}