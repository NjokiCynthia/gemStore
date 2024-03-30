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
    );
  }
}
