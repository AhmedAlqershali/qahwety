import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/profile/my_orders_screen.dart';
import 'package:qahwety/screens/profile/my_wallet_screen.dart';
class AppBarProfile extends StatelessWidget {
  const AppBarProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backgrund_splash.png'),
              fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                ),

                child: Image.asset('images/Cafe_Head.png',fit: BoxFit.cover,height: 80.h,width: 80.w,)),
            SizedBox(
              height: 19.h,
            ),
            Text('Abdulhamid Dawas',style: TextStyle(
              fontSize: 20.sp,color: Colors.white
            ),),
            Text('abdawas@gmail.com',style: TextStyle(
              color: Colors.white
            ),),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 55.w,top: 16.h,bottom: 37.h),
                  child: ElevatedButton(

                    onPressed: () =>Get.to(MyOrdersScreen()),
                    child: Row(
                      children: [
                        Image.asset('images/Orders.png'),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text('My Orders',style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white
                        ),)

                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(
                        width: 1,
                          color: Color(0xFFDA6368)
                      ),
                      elevation: 0,
                        primary: Colors.transparent,
                        minimumSize: Size(125.w, 40.h),
                        ),


                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:16.w,top: 16.h,bottom: 37.h),
                  child: ElevatedButton(

                    onPressed: () =>Get.to(MyWalletScreen()),
                    child: Row(
                    children: [
                      Image.asset('images/img_home/Wallet.png',color: Color(0xFFDA6368),),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text('My Wallet',style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                      ),)
                    ],
    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),

                      side: BorderSide(
                          width: 1,
                          color: Color(0xFFDA6368)
                      ),
                      elevation: 0,
                        primary: Colors.transparent,
                        minimumSize: Size(125.w, 40.h),
                        ),


                  ),
                ),

              ],
            )



          ],
        ),
      ),
    );
  }
}
