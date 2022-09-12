import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/menu/package_screen.dart';

import '../../widget/appbar_gift.dart';
import '../home/cafeDetails_screen.dart';

class GiftVoucherScreen extends StatefulWidget {
  const GiftVoucherScreen({Key? key}) : super(key: key);

  @override
  State<GiftVoucherScreen> createState() => _GiftVoucherScreenState();
}

class _GiftVoucherScreenState extends State<GiftVoucherScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFC92026),
            title: Text('Gift Vouche'),
            centerTitle: true,
          ),
          body: ListView(

            children: [
              SizedBox(
                  height: 150.h,
                  child: AppBarGift()
              ),
              Container(
                width: 375.w,
                height: 70,
                child: Card(


                  child: Padding(
                    padding:  EdgeInsets.only(top: 20.h),
                    child: Text('Packages',
                      textAlign:TextAlign.center,

                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    ),),
                  ),
                ),
              ),
              GridView(
                scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 6,
                      childAspectRatio: 445 / 450
                  ),
                children: [
                  GestureDetector(
                    onTap: () =>Get.to(PackageScreen()),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 10.w),
                      child: Container(
                        height: 284.h,
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
                  ),
                  GestureDetector(
                    onTap: () =>Get.to(PackageScreen()),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 10.w),
                      child: Container(
                        height: 284.h,
                        child: Stack(
                          children: [

                            Padding(
                              padding:  EdgeInsets.only(top: 43.h),
                              child: GridInGift(num: 30,type: 'STANDARD'),
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
                  ),
                  GestureDetector(
                    onTap: () =>Get.to(PackageScreen()),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 10.w),
                      child: Container(
                        height: 284.h,
                        child: Stack(
                          children: [

                            Padding(
                              padding:  EdgeInsets.only(top: 43.h),
                              child: GridInGift(num: 50,type: 'PREMIUM'),
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
                  ),
                  GestureDetector(
                    onTap: () =>Get.to(PackageScreen()),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 10.w),
                      child: Container(
                        height: 284.h,
                        child: Stack(
                          children: [

                            Padding(
                              padding:  EdgeInsets.only(top: 43.h),
                              child: GridInGift(num: 60,type: 'BASIC'),
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
                  ),
                  GestureDetector(
                    onTap: () =>Get.to(PackageScreen()),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 10.w),
                      child: Container(
                        height: 284.h,
                        child: Stack(
                          children: [

                            Padding(
                              padding:  EdgeInsets.only(top: 43.h),
                              child: GridInGift(num: 80,type: 'STANDARD'),
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
                  ),
                  GestureDetector(
                    onTap: () =>Get.to(PackageScreen()),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 10.w),
                      child: Container(
                        height: 284.h,
                        child: Stack(
                          children: [

                            Padding(
                              padding:  EdgeInsets.only(top: 43.h),
                              child: GridInGift(num: 99,type: 'PREMIUM'),
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
                  ),
                ],


                  )



            ],

          ),




        ));
  }
}

class GridInGift extends StatelessWidget {
   GridInGift({
    Key? key,
     required this.num,
     required this.type,

  }) : super(key: key);

  String type;
  int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      child: Card(
        child: Column(
          children: [

            Padding(
              padding:  EdgeInsets.only(left: 25.w),
              child: Row(
                children: [
                  Text(
                    '$num',
                    style: TextStyle(
                      color: Color(0xFFC92026),
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'K.D',
                    style: TextStyle(
                      color: Color(0xFFC92026),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Text('$type',
                style: TextStyle(
                    wordSpacing: 5,
                    color: Color(0xFF6F6C6C),
                    fontSize: 13),
                maxLines: 2,
                softWrap: true),
          ],
        ),
      ),
    );
  }
}
