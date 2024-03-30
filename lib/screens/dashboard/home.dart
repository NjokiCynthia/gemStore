import 'package:flutter/material.dart';
import 'package:gem_store/utilities/textsyles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset('assets/images/menu_icon.png'),
          ),
          title: Center(
            child: customTitle3(
              text: 'GemStore',
              color: Theme.of(context).textSelectionTheme.selectionHandleColor,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset('assets/images/Bell_pin.png'),
            ),
          ],
        ),
        body:
            //Should be tabview but let me use icons since at the moment we do not ahve content for the other screens
            Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color.fromRGBO(58, 44, 39, 1.0))),
                      child: Image.asset(
                        'assets/images/first.png',
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    customText1(
                        text: 'Women', color: Color.fromRGBO(58, 44, 39, 1.0))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 36,
                      width: 38,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(243, 243, 243, 1.0)),
                      child: Image.asset('assets/images/men.png',
                          color: Color.fromRGBO(157, 157, 157, 1.0)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    customText1(
                        text: 'Men', color: Color.fromRGBO(157, 157, 157, 1.0))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 36,
                      width: 38,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(243, 243, 243, 1.0)),
                      child: Image.asset('assets/images/accessories.png',
                          color: Color.fromRGBO(157, 157, 157, 1.0)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    customText1(
                        text: 'Accessories',
                        color: Color.fromRGBO(157, 157, 157, 1.0))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 36,
                      width: 38,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(243, 243, 243, 1.0)),
                      child: Image.asset('assets/images/beauty.png',
                          color: Color.fromRGBO(157, 157, 157, 1.0)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    customText1(
                        text: 'Beauty',
                        color: Color.fromRGBO(157, 157, 157, 1.0))
                  ],
                ),
              ]),
              SizedBox(
                  width: double.infinity,
                  child: Image.asset('assets/images/autumn.png'))
            ],
          ),
        ));
  }
}
