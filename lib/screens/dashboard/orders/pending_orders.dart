import 'package:flutter/material.dart';
import 'package:gem_store/screens/dashboard/orders/delivered_orders.dart';
import 'package:gem_store/screens/models/orders.dart';

class PendingOrders extends StatefulWidget {
  const PendingOrders({super.key});

  @override
  State<PendingOrders> createState() => _PendingOrdersState();
}

class _PendingOrdersState extends State<PendingOrders> {
  @override
  Widget build(BuildContext context) {
    List<Orders> list = [
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1514",
          quantity: '2',
          subtotal: 110,
          trackingNumber: 'IK987362341',
          status: 1),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1679",
          quantity: '2',
          subtotal: 450,
          trackingNumber: 'IK3873218890',
          status: 1),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1671",
          quantity: '3',
          subtotal: 400,
          trackingNumber: 'IK237368881',
          status: 1),
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
