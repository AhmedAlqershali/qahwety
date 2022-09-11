import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/auth/signIn_screen.dart';

import 'forget_Password_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _nameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  String? _firstnameError;
  String? _emailError;
  String? _passwordError;
  bool _showPassword = false;


  @override
  void initState() {
    super.initState();
    _nameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();

  }

  @override
  void dispose() {
    _nameTextController.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFC92026),
        title: Text('Sign Up'),
        leading: IconButton(onPressed: ()=>Get.to(SignInScreen()), icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 26.w, left: 26.w, top: 30.h),
            child: TextField(
              controller: _nameTextController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  errorText: _emailError,
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
            padding: EdgeInsets.only(right: 26.w, left: 26.w, top: 30.h),
            child: TextField(
              controller: _emailTextController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  errorText: _emailError,
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
            padding: EdgeInsets.only(right: 26.w, left: 26.w, top: 30.h),
            child: TextField(
              controller: _passwordTextController,
                keyboardType: TextInputType.text,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  errorText: _emailError,
                  hintText: 'Password',
                  constraints: BoxConstraints(
                    // minHeight: 50,
                      maxHeight: 75.h,
                      maxWidth: 323.w),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                        child: Text('Show',style: TextStyle(
                          color: Colors.black
                        ),),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          width: 1.w,
                          color: Color(0xFFE2E2E2)
                        ),
                        primary: Colors.white,
                        backgroundColor: Colors.transparent,
                        elevation: 0,


                      ),
                    ),
                  )

                ),

            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 16),
            child: ElevatedButton(
              onPressed: () => performSignup(),
              child: Text('Sign up'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(323.w, 50.h),
                  primary: Color(0xFFC92026)),
            ),
          ),







        ],
      ),
    );
  }
  void performSignup() {
    if (checkData()) {
      print('Name: ${_nameTextController.text}');
      print('Email: ${_emailTextController.text}');
      print('Password: ${_passwordTextController.text}');
      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: const Text('Sign up in successfully'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.blue.shade300,
          duration: const Duration(seconds: 3),
        ),
      )
          .closed
          .then((value) {
        Get.to(SignInScreen());
      });
      // Navigator.pushReplacementNamed(context, '/categories_screen');
    }
  }

  bool checkData() {
    if (_nameTextController.text.isNotEmpty&&_emailTextController.text.isNotEmpty &&
         _passwordTextController.text.isNotEmpty) {
      updateErrorsState();
      return true;
    }
    updateErrorsState();
    return false;
  }

  void updateErrorsState() {
    setState(() {
      _firstnameError =
      _nameTextController.text.isEmpty ? 'Enter name ' : null;

      _emailError =
      _emailTextController.text.isEmpty ? 'Enter email address' : null;
      _passwordError =
      _passwordTextController.text.isEmpty ? 'Enter password' : null;
    });
  }


}
