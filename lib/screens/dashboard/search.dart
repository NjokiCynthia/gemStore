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
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
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
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTitle1(
                        text: 'Found', color: Color.fromRGBO(51, 48, 46, 1.0)),
                    customTitle1(
                        text: '152 Results',
                        color: Color.fromRGBO(51, 48, 46, 1.0)),
                  ],
                ),
                Container(
                  height: 40,
                  width: 97,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(51, 48, 46, 0.15),
                      ),
                      borderRadius: BorderRadius.circular(60)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 23, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        customText(
                            text: 'Filter',
                            color: Color.fromRGBO(51, 48, 46, 1.0)),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromRGBO(51, 48, 46, 1.0),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
