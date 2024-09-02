import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:news_blog_app/core/constants/my_colors.dart';
import 'package:news_blog_app/presentation/screens/onboard/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    moveToOnboard();
  }

  moveToOnboard() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => FadedScaleAnimation(
            fadeDuration: const Duration(milliseconds: 1000),
            scaleDuration: const Duration(milliseconds: 1000),
            child: const OnBoard(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: FadedScaleAnimation(
            child: Image.asset(
              "assets/images/journo_logo.png",
              height: 50,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}
