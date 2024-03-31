import 'package:flutter/material.dart';
import 'package:gem_store/screens/intro_screen.dart';
import 'package:gem_store/utilities/theme.dart';

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
        theme: MyTheme.appTheme,
        debugShowCheckedModeBanner: false,
        home: const IntroScreen());
  }
}
