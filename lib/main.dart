import 'package:flutter/material.dart';
import 'package:news_blog_app/presentation/screens/splash/splash.dart';

import 'core/constants/my_strings.dart';
import 'core/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyStrings.appName,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
