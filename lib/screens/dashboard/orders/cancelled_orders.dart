import 'package:flutter/material.dart';
import 'package:gem_store/screens/dashboard/orders/delivered_orders.dart';
import 'package:gem_store/models/orders.dart';

class CancelledOrders extends StatefulWidget {
  const CancelledOrders({super.key});

  @override
  State<CancelledOrders> createState() => _CancelledOrdersState();
}

class _CancelledOrdersState extends State<CancelledOrders> {
  @override
  Widget build(BuildContext context) {
    List<Orders> list = [
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1514",
          quantity: '2',
          subtotal: 110,
          trackingNumber: 'IK987362341',
          status: 3),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1679",
          quantity: '2',
          subtotal: 450,
          trackingNumber: 'IK3873218890',
          status: 3),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1671",
          quantity: '3',
          subtotal: 400,
          trackingNumber: 'IK237368881',
          status: 3),
    ];
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            Orders order = list[index];
            return OrdersCard(order: order, onPressed: () {});
          }),
    );
  }
}
