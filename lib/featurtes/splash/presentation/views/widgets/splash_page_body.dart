import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:booklyapp/core/utils/assets.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody> {
  @override
  void initState() {
    super.initState();

    navigatorToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            width: 250, // Set the width to the desired size
            AssetsData.Logo,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Read Some Books 😁!!'),
            ],
            repeatForever: true,
          ),
        )
      ],
    );
  }

  void navigatorToHomePage() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRoute of;
        (context).push("/homeview");
      },
    );
  }
}
