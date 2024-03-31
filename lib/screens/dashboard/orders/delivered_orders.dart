import 'package:flutter/material.dart';
import 'package:gem_store/screens/dashboard/orders/order_details.dart';
import 'package:gem_store/screens/models/orders.dart';
import 'package:gem_store/utilities/constants.dart';
import 'package:gem_store/utilities/textsyles.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DeliveredOrders extends StatefulWidget {
  const DeliveredOrders({super.key});

  @override
  State<DeliveredOrders> createState() => _DeliveredOrdersState();
}

class _DeliveredOrdersState extends State<DeliveredOrders> {
  @override
  Widget build(BuildContext context) {
    List<Orders> list = [
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1514",
          quantity: '2',
          subtotal: 110,
          trackingNumber: 'IK987362341',
          status: 2),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1679",
          quantity: '2',
          subtotal: 450,
          trackingNumber: 'IK3873218890',
          status: 2),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1671",
          quantity: '3',
          subtotal: 400,
          trackingNumber: 'IK237368881',
          status: 2),
    ];
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            Orders order = list[index];
            return OrdersCard(
                order: order,
                onPressed: () {
                  PersistentNavBarNavigator.pushNewScreen(context,
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                      withNavBar: false,
                      screen: const OrderDetails());
                });
          }),
    );
  }
}

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key, required this.order, required this.onPressed});

  final Orders order;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21.0, top: 8.0, right: 8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          color: const Color.fromRGBO(255, 255, 255, 1.0),
          height: 182,
          child: Card(
              borderOnForeground: false,
              elevation: 1.0,
              color: const Color.fromRGBO(255, 255, 255, 1.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 18, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          order.orderNumber ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Theme.of(context)
                                .textSelectionTheme
                                .selectionHandleColor,
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          order.orderDate ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Theme.of(context)
                                .textSelectionTheme
                                .selectionHandleColor,
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Tracking number:',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          order.trackingNumber ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Theme.of(context)
                                .textSelectionTheme
                                .selectionHandleColor,
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Quantity:',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              order.quantity ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Theme.of(context)
                                    .textSelectionTheme
                                    .selectionHandleColor,
                              ),
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Subtotal:',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '\$ ${order.subtotal}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Theme.of(context)
                                    .textSelectionTheme
                                    .selectionHandleColor,
                              ),
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getStatus(),
                        SizedBox(
                          height: 35,
                          child: OutlinedButton(
                              onPressed: () {
                                PersistentNavBarNavigator.pushNewScreen(context,
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                    withNavBar: false,
                                    screen: const OrderDetails());
                              },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: themeColor),
                              ),
                              child: customText(
                                  text: 'DETAILS',
                                  color: Theme.of(context)
                                      .textSelectionTheme
                                      .selectionHandleColor)),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget getStatus() {
    if (order.status == 1) {
      return const Text(
        "PENDING",
        style: TextStyle(color: Colors.lightBlueAccent),
      );
    } else if (order.status == 2) {
      return const Text(
          // text:
          "DELIVERED",
          style: TextStyle(
            color: Color.fromRGBO(0, 146, 84, 1.0),
          ));
    } else {
      return const Text("CANCELLED",
          style: TextStyle(
            color: Colors.red,
          ));
    }
  }
}
