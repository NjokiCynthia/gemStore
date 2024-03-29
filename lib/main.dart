import 'package:flutter/material.dart';
import 'package:gem_store/screens/intro-screen.dart';
import 'package:gem_store/utilities/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'gemStore',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            titleLarge: AppTextStyles.headerBig,
            displayLarge: AppTextStyles.header,
            displayMedium: AppTextStyles.smallHeaderSlightlyBold,
            bodyMedium: AppTextStyles.normal,
            bodySmall: AppTextStyles.small,
            labelMedium: AppTextStyles.normalGreen,
            titleMedium: AppTextStyles.titleNormalBold,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const IntroScreen());
  }
}
