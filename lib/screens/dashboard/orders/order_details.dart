import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gem_store/utilities/textsyles.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
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
        title: Center(
          child: customTitle2(
            text: 'Order #1514',
            color: Theme.of(context).textSelectionTheme.selectionHandleColor,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              height: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(87, 87, 87, 1.0),
              ),
              child: ListTile(
                title: Text('Your order is delivered'),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Rate product to get 5 points for collect.',
                  ),
                ),
                trailing: Image.asset('assets/images/details.png'),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 114,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order number:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '#1514',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tracking number:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'IK987362341',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Address:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'SBI Building, Software Park',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Linen Dress:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'x1',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '\$ 68.00',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Maxi Dress:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'x1',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '\$ 52.00',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '120.00',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '0.00',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '\$ 120.00',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 44,
                  width: 168,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Color.fromRGBO(119, 126, 144, 1.0))),
                      onPressed: () {},
                      child: buttonText(
                          text: 'Return Home',
                          color: Color.fromRGBO(119, 126, 144, 1.0))),
                ),
                SizedBox(
                  height: 44,
                  width: 119,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(52, 52, 52, 1.0)),
                      onPressed: () {},
                      child: buttonText(
                          text: 'Rate',
                          color: Color.fromRGBO(255, 255, 255, 1.0))),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
