import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/profile/my_orders_screen.dart';
import 'package:qahwety/screens/profile/my_wallet_screen.dart';
class AppBarGift extends StatelessWidget {
  const AppBarGift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: Color(0xFFC92026)
        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 26.w,top: 29.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Text('How it works',
                style: TextStyle(
                  fontSize: 20.sp,color: Colors.white
              ),),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 320.w,
                child: Text('orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5.sp,
                    fontSize: 14.sp
                ),),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
