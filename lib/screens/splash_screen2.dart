import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/view_Page_screen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/backgrund_splash.png',
            fit: BoxFit.cover,
            width: double.infinity.w,
            height: double.infinity.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  Spacer(),
                  TextButton(
                    onPressed: () =>Get.to(ViewPageScreen()),
                    child: Text('Skip'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14,bottom: 24),
                child: Image.asset(
                  'images/Ads.png',
                  fit: BoxFit.cover,
                  width: double.infinity.w,
                ),
              ),
            ],
          )


        ],
      ),
    ));
  }
}
