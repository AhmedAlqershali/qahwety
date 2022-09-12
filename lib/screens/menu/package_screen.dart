import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/menu/giftvoucher_screen.dart';

import '../cart/pay_screen.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  String _num = '1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC92026),
          title: Text('Package'),
          centerTitle: true,
        ),
        body: Column(

          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 135.w,right: 134.w),
              child: Container(
                height: 132.h,
                width: 106.w,
                child: Stack(
                  children: [

                    Padding(
                      padding:  EdgeInsets.only(top: 43.h),
                      child: GridInGift(num: 20,type: 'BASIC'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.w,bottom: 50.h),
                      child: Image.asset(
                        'images/cockade.png',
                        fit: BoxFit.cover,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(height: 1.h),

            Wrap(
              children: [

                 Expanded(

                    child: RadioListTile<String>(


                      title: Text('My Wallet', style: TextStyle()),
                      value: '1',
                      groupValue: _num,
                      onChanged: (String? value) {
                        if (value != null) {
                          setState(() => _num = value);
                        }
                      },
                    ),
                  ),
                Divider(height: 1.h),

                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Gift', style: TextStyle()),
                    value: '2',
                    groupValue: _num,
                    onChanged: (String? value) {
                      if (value != null) {
                        setState(() => _num = value);
                      }
                    },
                  ),
                ),

              ],
            ),
            Divider(height: 1.h),

            TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    constraints: BoxConstraints(
                      minHeight: 50,
                      //   maxHeight: 50.h,
                        maxWidth: 375.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),




          ],
        ),
        bottomSheet:ElevatedButton(
          onPressed: () => Get.to(PayScreen()),
          child: Text('Pay Now'),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity.w, 50.h),
              primary: Color(0xFFC92026)),
        ),


      ),
    );
  }
}
