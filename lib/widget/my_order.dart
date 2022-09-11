import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.black,
              tabs: [
            Tab(
              text: ' Open Orders',
            ),
            Tab(
              text: 'Completed Orders',
            ),
          ]),
        ),
      ),
    );
  }
}
