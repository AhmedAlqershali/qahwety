import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditNameScreen extends StatefulWidget {
  const EditNameScreen({Key? key}) : super(key: key);

  @override
  State<EditNameScreen> createState() => _EditNameScreenState();
}

class _EditNameScreenState extends State<EditNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC92026),
        leading: IconButton(onPressed: (){}, icon: Image.asset('images/img_home/Close.png')),
        title: Text('Edit Name'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset('images/img_home/Check.png'))
        ],

      ),
      body: Column(

        children: [
          Padding(
            padding:  EdgeInsets.only(left: 26.w,top: 30.h),
            child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Abdulhamid Dawas',
                  constraints: BoxConstraints(
                    // minHeight: 50,
                      maxHeight: 75.h,
                      maxWidth: 323.w),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                )
            ),
          )
        ],
      ),

    );
  }
}
