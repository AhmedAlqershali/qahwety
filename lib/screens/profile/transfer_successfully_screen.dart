import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/bn_screen.dart';

import '../home/home_screen.dart';

class TransferSuccessfullyScrren extends StatefulWidget {
  const TransferSuccessfullyScrren({Key? key}) : super(key: key);

  @override
  State<TransferSuccessfullyScrren> createState() => _TransferSuccessfullyScrrenState();
}

class _TransferSuccessfullyScrrenState extends State<TransferSuccessfullyScrren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 75.h,),
                Image.asset(
                  'images/pay.png',
                  width: 72,
                  height: 72,
                ),
                SizedBox(height: 30.h,),
                Text(
                  'Balacne Transfer Successfully',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 15.h,),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 56.h,),
                Text(
                  'Current Balance',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '300',
                      textAlign: TextAlign.center,
                      style: TextStyle(color:Color(0xFFC92026), fontSize: 22),
                    ),
                    Text(
                      '  K.W',
                      textAlign: TextAlign.center,
                      style: TextStyle(color:Color(0xFFC92026), fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomSheet: ElevatedButton(
            onPressed: () => Get.off(BnScreen()),
            child: Text('Done'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity.w, 50.h),
                primary: Color(0xFFC92026)),
          )


        )
    );
  }
}
