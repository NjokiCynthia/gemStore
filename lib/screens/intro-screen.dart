import 'package:flutter/material.dart';
import 'package:gem_store/screens/dashboard/dashboard.dart';
import 'package:gem_store/utilities/constants.dart';
import 'package:gem_store/utilities/textsyles.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/intro_screen.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            color: themeColor.withOpacity(0.5),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
              top: 528,
              left: 47,
              child: Column(
                children: [
                  heading1(text: 'Welcome to GemStore!', color: Colors.white
                      //Theme.of(context).textSelectionTheme.selectionColor
                      ),
                  const SizedBox(
                    height: 13,
                  ),
                  heading2(
                    text: 'The home for a fashionista',
                    color: Colors.white,
                  )
                  // Theme.of(context).textSelectionTheme.selectionColor)
                ],
              )),
          Positioned(
              top: 659,
              left: 87,
              child: Container(
                height: 53,
                width: 193,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(29.5)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 0.25)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Dashboard())));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
