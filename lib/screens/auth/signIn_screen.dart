import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/auth/forget_Password_screen.dart';
import 'package:qahwety/screens/auth/signUp_screen.dart';
import 'package:qahwety/screens/bn_screen.dart';


class SignInScreen extends StatefulWidget {
   SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {



  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  String? _emailError;
  String? _passwordError;


  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }


  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                Container(
                  height: 353.3.h,
                  width: 416.w,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        height: 353.h,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/Head.png'),
                              )),
                        ),
                      ),
                      Positioned(
                          top: 60.h,
                          right: 0.w,
                          left: 50.w,
                          child: Image.asset(
                            'images/Group.png',
                            height: 94.h,
                            width: 117.w,
                          )),
                      Positioned(
                          top: 160.h,
                          right: 0.w,
                          left: 90.w,
                          child: Image.asset(
                            'images/Cup.png',
                            height: 200.h,
                            width: 200.w,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 26.w, left: 26.w),
                  child: TextField(
                    controller: _emailTextController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(

                        hintText: 'Full Name',
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
                  padding: EdgeInsets.only(right: 26.w, left: 26.w, top: 20.h),
                  child: TextField(
                    controller: _passwordTextController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(

                        hintText: 'Password',
                        constraints: BoxConstraints(
                          // minHeight: 50,
                            maxHeight: 75.h,
                            maxWidth: 323.w),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                      )
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: ElevatedButton(

                    onPressed: () =>performLogin(),
                    child: Text('Sign in'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(323.w, 50.h),
                        primary: checkData() == false ? Color(0xFF778899) :Color(0xFFC92026)),


                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                Center(
                  child: GestureDetector(
                    onTap: ()=>Get.to(ForgetPasswordScreen()),
                    child: Text('Forgot Password?',style: TextStyle(color: Colors.grey),),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account?',style: TextStyle(color: Colors.grey),),
                      SizedBox(width: 5.w,),
                      TextButton(onPressed: ()=>Get.to(SignUpScreen()),child: Text('Sign up',style: TextStyle(color: Color(0xFFC92026)),))
                    ],
                  ),
                ),


              ],
            )));
  }

  void performLogin() {
    if (checkData()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Logged in successfully'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.blue.shade300,
          duration: const Duration(seconds: 3),
          dismissDirection: DismissDirection.horizontal,
        ),
      );
      Login();
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Faild'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
          dismissDirection: DismissDirection.horizontal,

        ),
      );
    }

  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    return false;
  }


  void Login() async {
    Get.off(BnScreen());

  }
}



