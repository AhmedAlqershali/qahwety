import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/auth/signIn_screen.dart';
import 'package:qahwety/screens/auth/signUp_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFC92026),
        title: Text('Forget Password'),
        leading: IconButton(onPressed: ()=>Get.to(SignInScreen()), icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 26.w, left: 26.w, top: 30.h),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email Address',
                  constraints: BoxConstraints(
                      // minHeight: 50,
                      maxHeight: 75.h,
                      maxWidth: 323.w),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

              )
              ),
            ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: ElevatedButton(
              onPressed: () => Get.to(SignUpScreen()),
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(323.w, 50.h), primary: Color(0xFFC92026)),
            ),
          ),
        ],
      ),
    );
  }
}
