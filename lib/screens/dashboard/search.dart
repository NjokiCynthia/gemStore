import 'package:flutter/material.dart';
import 'package:gem_store/screens/models/product_search.dart';
import 'package:gem_store/utilities/textsyles.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
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
                padding: const EdgeInsets.only(left: 32, right: 32, top: 10),
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
                                  text: 'Found \n 152 Results',
                                  color: const Color.fromRGBO(51, 48, 46, 1.0)),

                            ],
                          ),
                          Container(
                            height: 40,
                            width: 97,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(51, 48, 46, 0.15),
                                ),
                                borderRadius: BorderRadius.circular(60)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 23, top: 10, bottom: 10),
                              child: Row(
                                children: [
                                  customText(
                                      text: 'Filter',
                                      color: const Color.fromRGBO(51, 48, 46, 1.0)),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Color.fromRGBO(51, 48, 46, 1.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Expanded(
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: FoundProduct.products.length,
                          // gridDelegate:
                          //     const SliverGridDelegateWithFixedCrossAxisCount(
                          //   crossAxisCount: 2,
                          //   crossAxisSpacing: 10,
                          //   mainAxisSpacing: 10,
                          //         childAspectRatio: width / (height / 4)
                          //     ),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15,
                              childAspectRatio: .6
                          ),
                          itemBuilder: (context, index) {
                            final item =
                                FoundProduct.products.values.toList()[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Stack(children: [
                                    Image.asset(
                                      item.imagePath,
                                      width: double.infinity
                                      ,
                                      fit: BoxFit.contain,
                                    ),
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: Container(
                                          height: 27,
                                          width: 27,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                          child: Image.asset(item.vector)),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  item.name,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(29, 31, 34, 1.0),
                                    fontFamily: 'ProductSans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                if (index == 0)
                                  Row(
                                    children: [
                                      Text(
                                        item.price,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color:
                                              Color.fromRGBO(29, 31, 34, 1.0),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                        text: const TextSpan(
                                          text: '\$ 90.00',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                190, 191, 196, 1.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if (index == 1)
                                  Row(
                                    children: [
                                      Text(
                                        item.price,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color:
                                              Color.fromRGBO(29, 31, 34, 1.0),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                        text: const TextSpan(
                                          text: '\$ 82.00',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Color.fromRGBO(
                                                190, 191, 196, 1.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                if (index != 0 && index != 1)
                                  Text(
                                    item.price,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                const SizedBox(height: 4),
                                if (index == 0)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/stars.png'),
                                      const SizedBox(width: 10),
                                      const Text('(64)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  ),
                                if (index == 1)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/stars.png'),
                                      const SizedBox(width: 10),
                                      const Text('(53)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  ),
                                if (index == 2)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/star.png'),
                                      const SizedBox(width: 10),
                                      const Text('(46)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  ),
                                if (index == 3)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/star.png'),
                                      const SizedBox(width: 10),
                                      const Text('(38)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  ),
                                if (index == 4)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/star.png'),
                                      const SizedBox(width: 10),
                                      const Text('(50)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  ),
                                if (index == 5)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/stars.png'),
                                      const SizedBox(width: 10),
                                      const Text('(39)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  ),
                                if (index == 6)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/stars.png'),
                                      const SizedBox(width: 10),
                                      const Text('(83)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  ),
                                if (index == 7)
                                  Row(
                                    children: [
                                      Image.asset('assets/images/star.png'),
                                      const SizedBox(width: 10),
                                      const Text('(25)',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 10,
                                              color: Color.fromRGBO(
                                                  29, 31, 34, 1.0)))
                                    ],
                                  )
                              ],
                            );
                          },
                        ),
                      ),
                    ]))));
  }
}
