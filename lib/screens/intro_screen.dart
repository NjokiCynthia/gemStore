import 'package:flutter/material.dart';
import 'package:gem_store/screens/dashboard/dashboard.dart';
import 'package:gem_store/utilities/textsyles.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
              color: const Color.fromRGBO(0, 0, 0, 0.5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
                //top: 528,
                bottom: 184,
                left: 47,
                child: Column(
                  children: [
                    heading1(
                        text: 'Welcome to GemStore!',
                        color: const Color.fromRGBO(255, 255, 255, 1.0)
                        //Theme.of(context).textSelectionTheme.selectionColor
                        ),
                    const SizedBox(
                      height: 13,
                    ),
                    heading2(
                        text: 'The home for a fashionista',
                        color: const Color.fromRGBO(255, 255, 255, 1.0)),
                    // Theme.of(context).textSelectionTheme.selectionColor)
                    const SizedBox(
                      height: 31,
                    ),
                  ],
                )),
            Positioned(
                // top: 659,
                bottom: 100,
                left: 87,
                child: Container(
                  height: 53,
                  width: 193,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 1.0)),
                      borderRadius: BorderRadius.circular(29.5)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(255, 255, 255, 0.25)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Dashboard())));
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ProductSans',
                          color: Color.fromRGBO(255, 255, 255, 1.0)),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
