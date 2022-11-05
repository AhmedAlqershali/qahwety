import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/bn_screen.dart';
import 'package:qahwety/screens/home/home_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';


class FilterScreen extends StatefulWidget {
  FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(100, 400);

  TextEditingController minValue = new TextEditingController();

  TextEditingController maxValue = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFC92026),
            leading: IconButton(onPressed: ()=>Get.off(BnScreen()), icon: Image.asset('images/img_home/Close.png')),
            title: Text('Filtter'),
            centerTitle: true,
            actions: [
              IconButton(onPressed: (){}, icon: Image.asset('images/img_home/Check.png'))
            ],

          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cofe State'),
                    ToggleSwitch(
                      fontSize: 16.0,
                      initialLabelIndex: 1,
                      activeBgColor: [Color(0xFFC92026)],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.white,
                      inactiveFgColor: Colors.grey,
                      totalSwitches: 2,
                      cornerRadius: 20.0,
                      borderWidth: 2.0,
                      borderColor: [Color(0xffD8CCC0)],
                      labels: ['Open', 'Close'],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Price Range'),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: 90.w,
                            height: 40.h,
                            child: TextField(
                              controller: minValue,
                              keyboardType: TextInputType.number,
                              decoration:
                              InputDecoration(border: OutlineInputBorder()),
                            )),
                        Text('K.D'),
                        Container(
                            width: 90.w,
                            height: 40.h,
                            child: TextField(
                                controller: maxValue,
                                keyboardType: TextInputType.number,
                                decoration:
                                InputDecoration(border: OutlineInputBorder()))),
                        Text('K.D'),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 340,
                          child: RangeSlider(
                            values: _currentRangeValues,
                            max: 500,
                            min: 0,
                            divisions:2,
                            activeColor: Color(0xFFC92026),

                            labels: RangeLabels(
                              _currentRangeValues.start.round().toString(),
                              _currentRangeValues.end.round().toString(),
                            ),
                            onChanged: (RangeValues value) {

                          },


                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Rating'),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/img_home/threeStar.png'),
                        Image.asset('images/img_home/fourStar.png'),
                        Image.asset('images/img_home/fiveStar.png'),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextButton(onPressed: (){}, child: Text('Reset Filter',style: TextStyle(color:Color(0xFFC92026),fontSize: 14),))

                  ],
                )
              ],
            ),
          ),
        ));
  }
}