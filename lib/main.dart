import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/profile/my_wallet_screen.dart';
import 'package:qahwety/screens/auth/signIn_screen.dart';
import 'package:qahwety/screens/bn_screen.dart';
import 'package:qahwety/screens/cart/delivery_info_screen.dart';
import 'package:qahwety/screens/home/cafeDetails_screen.dart';
import 'package:qahwety/screens/cart/cart_screen.dart';
import 'package:qahwety/screens/home/home_screen.dart';
import 'package:qahwety/screens/profile/transfer_successfully_screen.dart';
import 'package:qahwety/screens/splash_screen.dart';
import 'package:qahwety/widget/appbar_profile.dart';
import 'package:qahwety/widget/my_order.dart';

import 'screens/profile/my_orders_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              useInheritedMediaQuery: true,
              darkTheme: ThemeData.dark(),
              theme: ThemeData(
                  colorScheme: ColorScheme.fromSwatch().copyWith(

                    primary: const Color(0xFFC92026),
                  )
              ),
              // home: SplashScreen());
          home: SplashScreen());
        });
  }
}
