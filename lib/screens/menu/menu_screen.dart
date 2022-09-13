import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/menu/participating_coffees_screen.dart';
import 'package:qahwety/screens/menu/promotedoffers_screen.dart';

import 'aboutus_screen.dart';
import 'contactus_screen.dart';
import 'giftvoucher_screen.dart';
import 'notifications_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC92026),
        title: Text('Menu'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column (
          children: [
            SizedBox(
              height: 18.h,
            ),

            GestureDetector(
              onTap: ()=>Get.to(GiftVoucherScreen()),
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 25.w),
                      child: Image.asset('images/Gift.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 180.w),
                      child: Text('Gift Voucher'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 17.w),
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: ()=>Get.to(PromotedOffersScreen()),
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 30.w),
                      child: Image.asset('images/coupon.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 150.w),
                      child: Text('Promoted Offers'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 17.w),
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: ()=>Get.to(ParticipatingCoffeesScreen()),
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 30.w),
                      child: Image.asset('images/multiple-11.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 120.w),
                      child: Text('Participating Coffees'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 17.w),
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: ()=>Get.to(NotificationsScreen()),
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 30.w),
                      child: Image.asset('images/bell-55.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 170.w),
                      child: Text('Notifications'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 17.w),
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: ()=>Get.to(ContactusUsScreen()),
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 30.w),
                      child: Image.asset('images/email-83.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 170.w),
                      child: Text('Contact Us'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 17.w),
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: ()=>Get.to(AboutUsScreen()),
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 30.w),
                      child: Image.asset('images/alert-circle-i.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 170.w),
                      child: Text('About Us'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 17.w),
                      child: Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),),
                    )
                  ],
                ),
              ),
            ),






          ],
        ),
      ),
    ));
  }
}
