import 'package:flutter/material.dart';
import 'package:gem_store/utilities/product_data.dart';
import 'package:gem_store/utilities/textsyles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagePaths = [
    'assets/images/autumn.png',
    'assets/images/autumn.png',
    'assets/images/autumn.png',
  ];
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
            //Should be tabview but let me use icons since at the moment we do not have content for the other screens
            SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            58, 44, 39, 1.0))),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              58, 44, 39, 1.0))),
                                  child: Image.asset(
                                    'assets/images/here.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              customText1(
                                  text: 'Women',
                                  color: const Color.fromRGBO(58, 44, 39, 1.0))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 38,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(243, 243, 243, 1.0)),
                                child: Image.asset('assets/images/men.png',
                                    color: const Color.fromRGBO(
                                        157, 157, 157, 1.0)),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              customText1(
                                  text: 'Men',
                                  color:
                                      const Color.fromRGBO(157, 157, 157, 1.0))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 38,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(243, 243, 243, 1.0)),
                                child: Image.asset(
                                    'assets/images/accessories.png',
                                    color: const Color.fromRGBO(
                                        157, 157, 157, 1.0)),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              customText1(
                                  text: 'Accessories',
                                  color:
                                      const Color.fromRGBO(157, 157, 157, 1.0))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 38,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(243, 243, 243, 1.0)),
                                child: Image.asset('assets/images/beauty.png',
                                    color: const Color.fromRGBO(
                                        157, 157, 157, 1.0)),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              customText1(
                                  text: 'Beauty',
                                  color:
                                      const Color.fromRGBO(157, 157, 157, 1.0))
                            ],
                          ),
                        ]),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: 312,
                      height: 168,
                      child: PageView.builder(
                          itemCount: imagePaths.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  imagePaths[index],
                                  fit: BoxFit.cover,
                                ),
                                const Positioned(
                                  top: 5,
                                  right: 0,
                                  child: Text(
                                    'Autumn \n Collection \n 2021',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1.0),
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      imagePaths.length,
                                      (i) => Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        width: 12.0,
                                        height: 12.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: i == index
                                                ? Colors.white
                                                : Colors.transparent,
                                            width: 2.0,
                                          ),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTitle2(
                            text: 'Feature Products',
                            color: const Color.fromRGBO(0, 0, 0, 1.0)),
                        customText3(
                            text: 'Show All',
                            color: const Color.fromRGBO(155, 155, 155, 1.0))
                      ],
                    ),
                    const SizedBox(height: 24),
                    buildProductList(),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(248, 248, 250, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 79, top: 36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'I NEW COLLECTION',
                              style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  color: Color.fromRGBO(119, 126, 144, 1.0)),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            customTitle1(
                                text: 'HANG OUT',
                                color: const Color.fromRGBO(53, 57, 69, 1.0)),
                            customTitle1(
                                text: '& PARTY',
                                color: const Color.fromRGBO(53, 57, 69, 1.0))
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          // Ellipse background
                          Container(
                            height: 102,
                            width: 102,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(226, 226, 226, 1.0),
                            ),
                          ),
                          // Image
                          Positioned(
                            top: (102 - 158) / 2,
                            left: (102 - 119) / 2,
                            child: Image.asset(
                              'assets/images/hangout.png',
                              height: 158,
                              width: 119,
                              //fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    left: 38, right: 38, top: 20, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTitle2(
                            text: 'Recommended',
                            color: const Color.fromRGBO(0, 0, 0, 1.0)),
                        customText3(
                            text: 'Show All',
                            color: const Color.fromRGBO(155, 155, 155, 1.0))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 213,
                              child: Card(
                                  color: Colors.white,
                                  child: Row(children: [
                                    Container(
                                      height: 66,
                                      width: 66,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color.fromRGBO(
                                              196, 196, 196, 1.0)),
                                      child: Image.asset(
                                          'assets/images/hoodie.png'),
                                    ),
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          customText1(
                                              text: 'White fashion hoodie',
                                              color: const Color.fromRGBO(
                                                  29, 31, 34, 1.0)),
                                          const Text(
                                            '\$ 29.00',
                                            style: TextStyle(
                                                fontFamily: 'ProductSans',
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(
                                                    29, 31, 34, 1.0),
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )
                                  ])),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              width: 213,
                              child: Card(
                                  color: Colors.white,
                                  child: Row(children: [
                                    Container(
                                      height: 66,
                                      width: 66,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color.fromRGBO(
                                              196, 196, 196, 1.0)),
                                      child: Image.asset(
                                          'assets/images/cotton.png'),
                                    ),
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          customText1(
                                              text: 'Cotton T-shirt',
                                              color: const Color.fromRGBO(
                                                  29, 31, 34, 1.0)),
                                          const Text(
                                            '\$ 30.00',
                                            style: TextStyle(
                                                fontFamily: 'ProductSans',
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(
                                                    29, 31, 34, 1.0),
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )
                                  ])),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTitle2(
                            text: 'Top Collection',
                            color: const Color.fromRGBO(0, 0, 0, 1.0)),
                        customText3(
                            text: 'Show All',
                            color: const Color.fromRGBO(155, 155, 155, 1.0))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(248, 248, 250, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 23, top: 22),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'I Sale up to 40%',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        color:
                                            Color.fromRGBO(119, 126, 144, 1.0)),
                                  ),
                                  const SizedBox(
                                    height: 23,
                                  ),
                                  customTitle1(
                                      text: 'FOR SLIM',
                                      color: const Color.fromRGBO(
                                          119, 126, 144, 1.0)),
                                  customTitle1(
                                      text: '& BEAUTY',
                                      color: const Color.fromRGBO(
                                          119, 126, 144, 1.0))
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/slim.png',
                              height: 158,
                              width: 119,
                              //fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(248, 248, 250, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 23, top: 34),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'I Summer Collection 2021',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        color:
                                            Color.fromRGBO(119, 126, 144, 1.0)),
                                  ),
                                  const SizedBox(
                                    height: 23,
                                  ),
                                  customTitle1(
                                      text: 'Most sexy',
                                      color: const Color.fromRGBO(
                                          53, 57, 69, 1.0)),
                                  customTitle1(
                                      text: '& fabulous',
                                      color: const Color.fromRGBO(
                                          53, 57, 69, 1.0)),
                                  customTitle1(
                                      text: 'design',
                                      color: const Color.fromRGBO(
                                          53, 57, 69, 1.0)),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/image.png',
                              fit: BoxFit.cover,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 194,
                            width: 148,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color.fromRGBO(248, 248, 250, 1.0)),
                            child: Row(
                              children: [
                                Image.asset('assets/images/t_shirt.png'),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 42,
                                    ),
                                    Text('T-Shirts',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                115, 118, 128, 1.0),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13)),
                                    SizedBox(
                                      height: 32,
                                    ),
                                    Text(
                                      'The \n Office \n Life',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(29, 31, 34, 1.0)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 194,
                            width: 148,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color.fromRGBO(248, 248, 250, 1.0)),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 12,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 42,
                                    ),
                                    Text('Dresses',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                115, 118, 128, 1.0),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13)),
                                    SizedBox(
                                      height: 32,
                                    ),
                                    Text(
                                      'Elegant \n design',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(29, 31, 34, 1.0)),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Image.asset('assets/images/elegant.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget buildProductCategory({
  required String productId,
  required String label,
  required String iconPath,
}) {
  return Column(
    children: [
      Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color.fromRGBO(58, 44, 39, 1.0)),
        ),
        child: Image.asset(iconPath),
      ),
      const SizedBox(height: 3),
      customText1(text: label, color: const Color.fromRGBO(58, 44, 39, 1.0)),
    ],
  );
}

Widget buildProductList() {
  return SizedBox(
    height: 230,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        ProductWidget(productId: "turtle_neck"),
        SizedBox(
          width: 20,
        ),
        ProductWidget(productId: "long_sleeve"),
        SizedBox(
          width: 20,
        ),
        ProductWidget(productId: "sportwear"),
      ],
    ),
  );
}

class ProductWidget extends StatelessWidget {
  final String productId;

  const ProductWidget({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final product = ProductData.products[productId]!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Color.fromRGBO(232, 232, 232, 1.0),
          child: Image.asset(
            product.imagePath,
            width: 126,
            height: 172,
          ),
        ),
        Text(
          product.name,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(29, 31, 34, 1.0)),
        ),
        const SizedBox(height: 4),
        Text(
          product.price,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(29, 31, 34, 1.0),
          ),
        ),
      ],
    );
  }
}
