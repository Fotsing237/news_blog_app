import 'package:flutter/material.dart';
import 'package:news_blog_app/core/constants/my_colors.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/journo_logo.png",
              color: MyColors.primaryColor,
              height: 50,
              width: 150,
            ),

          ],
        ),
      ),
    );
  }
}
