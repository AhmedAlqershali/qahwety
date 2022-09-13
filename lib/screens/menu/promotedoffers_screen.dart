import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PromotedOffersScreen extends StatefulWidget {
  const PromotedOffersScreen({Key? key}) : super(key: key);

  @override
  State<PromotedOffersScreen> createState() => _PromotedOffersScreenState();
}

class _PromotedOffersScreenState extends State<PromotedOffersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC92026),
          title: Text('Promoted Offers'),
          centerTitle: true,
        ),
        body: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                childAspectRatio: 445 / 450
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w),
                child: Card(
                  child: Column(


                    children: [

                      Padding(
                        padding:  EdgeInsets.only(right: 100.w,),
                        child: Container(
                          height: 24.h,
                          width: 64.w,
                          color: Color(0xFFC92026),
                          child: Text('30% OFF',textAlign: TextAlign.center),
                        ),
                      ),
                      Image.asset(
                        'images/img_home/Rectangle.png',
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Cafe Bateel',
                        style: TextStyle(
                          color: Color(0xFF0D0D0D),
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Text('Cafe, Healthy Food,',
                            style: TextStyle(
                                wordSpacing: 5,
                                color: Color(0xFF6F6C6C),
                                fontSize: 13),
                            maxLines: 2,
                            softWrap: true),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Text(' Breakfast',
                            style: TextStyle(
                                wordSpacing: 5,
                                color: Color(0xFF6F6C6C),
                                fontSize: 13),
                            maxLines: 2,
                            softWrap: true),
                      ),
                    ],
                  ),
                ),
              );
            }),

      ),
    );
  }
}
