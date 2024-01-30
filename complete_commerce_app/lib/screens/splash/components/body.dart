import 'package:flutter/material.dart';

import 'splash_content.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shop",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround the different places in Egypt",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                itemBuilder: (ctx, index) => SplashContent(
                  text: splashData[index]["text"]!,
                  image: splashData[index]["image"]!,
                ),
                onPageChanged: (current) {
                  setState(() {
                    currentPage = current;
                  });
                },
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => bulidDot(index: index),
                      ),
                    ),
                    DefaultButton(text: 'Continue', press: (){},)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer bulidDot({index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: kDefaultPadding / 4),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color:
              currentPage == index ? kPrimaryColor : kTextColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(5)),
      duration: kAnimationDuration,
    );
  }
}

