import 'package:flutter/material.dart';
import 'package:gem_store/screens/dashboard/orders/cancelled_orders.dart';
import 'package:gem_store/screens/dashboard/orders/delivered_orders.dart';
import 'package:gem_store/screens/dashboard/orders/pending_orders.dart';
import 'package:gem_store/utilities/constants.dart';
import 'package:gem_store/utilities/textsyles.dart';

class ListOrders extends StatefulWidget {
  const ListOrders({super.key});

  @override
  State<ListOrders> createState() => _ListOrdersState();
}

class _ListOrdersState extends State<ListOrders> {

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
          child: customTitle2(
            text: 'My Orders',
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
      body: SafeArea(
        child: DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: themeColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.white,
                      tabs: const [
                        SizedBox(
                          height: 28,
                          width: 91,
                          child: Tab(
                            text: 'Pending',
                          ),
                        ),
                        SizedBox(
                          height: 28,
                          width: 91,
                          child: Tab(
                            text: 'Delivered',
                          ),
                        ),
                        SizedBox(
                          height: 28,
                          width: 91,
                          child: Tab(
                            text: 'Cancelled',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TabBarView(
                      children: [
                        PendingOrders(),
                        DeliveredOrders(),
                        CancelledOrders(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
