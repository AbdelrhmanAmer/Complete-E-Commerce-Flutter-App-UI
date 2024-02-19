import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    super.key,
    required this.iconData,
    required this.press,
    this.elevation = 0,
  });
  final IconData iconData;
  final double elevation;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(50),
      child: IconButton(
        icon: Icon(iconData, size: 20,),
        onPressed: press,
        style: IconButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
