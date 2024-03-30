import 'package:flutter/material.dart';
import 'package:gem_store/utilities/textsyles.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset('assets/images/back_button.png'),
          ),
        ),
        title: customTitle2(
          text: 'Dresses',
          color: Theme.of(context).textSelectionTheme.selectionHandleColor,
        ),
      ),
    );
  }
}
