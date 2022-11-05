import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewPage extends StatelessWidget {
  ViewPage(
      {required this.img, required this.name, required this.subname, Key? key})
      : super(key: key);

  late String img;
  late String name;
  late String subname;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset('images/$img',width: 160.w,height: 130.h,),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 320.w,
          height: 90.h,
          child: Column(
            children: [
              Text(
                '$name',
                style: GoogleFonts.nunito(
                  fontSize: 24,
                  color: Color(0xFF0D0D0D),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Text(
                '$subname',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Color(0xFF6F6C6C),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
