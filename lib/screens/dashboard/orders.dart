import 'package:flutter/material.dart';
import 'package:gem_store/screens/models/orders.dart';

class ListOrders extends StatefulWidget {
  const ListOrders({super.key});

  @override
  State<ListOrders> createState() => _ListOrdersState();
}

class _ListOrdersState extends State<ListOrders> {
  @override
  Widget build(BuildContext context) {
    List<Orders> list = [
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1514",
          quantity: 2,
          subtotal: 110,
          trackingNumber: 'IK987362341',
          status: 'DELIVERED'),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1514",
          quantity: 2,
          subtotal: 110,
          trackingNumber: 'IK987362341',
          status: 'DELIVERED'),
      Orders(
          orderDate: '13/05/2021',
          orderNumber: "Order #1514",
          quantity: 2,
          subtotal: 110,
          trackingNumber: 'IK987362341',
          status: 'DELIVERED'),
    ];
    return Scaffold();
  }
}
