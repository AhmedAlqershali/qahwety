import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
          centerTitle: true,
        ),

        body: Padding(
          padding:  EdgeInsets.only(left: 26.w,top: 37.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/Logo.png',height: 98.h,),
              SizedBox(height: 28,),

              Text('Lorem Ipsum is simply dummy text of the printing and',textAlign: TextAlign.center,style: TextStyle(fontSize: 14.sp),),
              Text(' typesetting industry.  Lorem Ipsum has been the',textAlign: TextAlign.center,style: TextStyle(fontSize: 14.sp),),
              Text(' industry\'s standard dummy text ever since the ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14.sp),),
              Text(' 1500s, when an unknown printer took a galley of ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14.sp),),
              Text(' type and scrambled it to make a type specimen ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14.sp),),
              Text(' book. ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14.sp),),






            ],
          ),
        ),
      ),
    );
  }
}