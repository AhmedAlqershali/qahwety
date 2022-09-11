import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/cart/delivery_info_screen.dart';
import 'package:qahwety/screens/cart/schedule_order.dart';

import 'package:toggle_switch/toggle_switch.dart';


class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int item = 1;
  int counteritem=1;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          title: Text(
            'Checkout',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text('Order summary'),
                      ],
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 5),
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'images/img_home/img_cup.png',
                                      width: 64.w,
                                      height: 64.h,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Wiener Schnitze',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      'Cafe Bateel',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Text(
                                      '14 K.D',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFC92026)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                              Color(0xFFF8E4D2))),
                                      child: Text('QTY 1'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Price'),
                        Text(
                          '14 K.D',
                          style: TextStyle(color: Color(0xFFC92026)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Delivery Info'),
                    Spacer(),
                    Text('Abdulhamid Dawas, Kuwait'),
                    IconButton(
                        onPressed: () {
                          Get.to(DeliveryInfoScreen());
                        },
                        icon: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: Colors.white,
              height: 60.h,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ToggleSwitch(
                          fontSize: 16.0,
                          initialLabelIndex: item,
                          activeBgColor: [Color(0xFFC92026)],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.white,
                          inactiveFgColor: Colors.grey,
                          totalSwitches: 2,
                          minWidth: 375.w,
                          minHeight: 38.h,
                          cornerRadius: 20.0,
                          borderWidth: 2.0.w,
                          borderColor: [Color(0xFFF8E4D2)],
                          labels: ['Order Now', 'Schedule Order'],
                          onToggle: (index) {
                            if (index == 1) {
                              setState(() {
                                item = 1;
                                counteritem=2;



                              });
                            } else if (index == 0) {
                              setState(() {
                                item = 0;
                                counteritem = 0;
                              });
                            }
                          } ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Schedule(
              item: counteritem,
            )
          ]),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(top: 16),
          child: ElevatedButton(

            onPressed: () =>Get.to(CheckoutScreen()),
            child: Text('Pay Now'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(375.w, 50.h),
                primary:Color(0xFFC92026)),


          ),
        ),
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  final int item;

  Schedule({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: item,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monday',
                        style: TextStyle(color: Color(0xFFC92026)),
                      ),
                      Text(
                        '9 November 2018',
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('10:00 Am'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.to(ScheduleOrder());
                          },
                          icon: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}