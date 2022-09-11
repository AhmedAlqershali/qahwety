import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CafeDetailsScreen extends StatefulWidget {
  const CafeDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CafeDetailsScreen> createState() => _CafeDetailsScreenState();
}

class _CafeDetailsScreenState extends State<CafeDetailsScreen> {
  bool isTap=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC92026),
          title: Text('Cafe Details'),
          centerTitle: true,),
        body: ListView(


          children: [
            Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 156.w,top: 16.h),
                        child: Image.asset('images/img_home/Rectangle.png',height: 64.h,width: 64.w,),
                      ),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(right: 16.w),
                        child: Container(
                          height: 24.h,
                          width: 50.w,
                          color: Color(0xFF77E116),
                          child: Center(child: Text('Open',style: TextStyle(
                              color: Colors.white
                          ),)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text('Cafe Bateel',style: TextStyle(
                    fontSize: 20
                  ),),
                   Padding(
                     padding:  EdgeInsets.only(left: 10.w,bottom: 14.h),
                     child: Text('Cafe, Healthy Food, Breakfast',
                        style: TextStyle(
                            wordSpacing: 5,
                            color: Color(0xFF6F6C6C),
                            fontSize: 14),
                        maxLines: 2,
                        softWrap: true),
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('4.0',style: TextStyle(fontSize: 16,color: Colors.black),),
                          Image.asset('images/img_home/fourStar.png'),

                        ],
                      ),
                        Column(
                          children: [
                            Text('20 min',style: TextStyle(fontSize: 16,color: Colors.black),)
                            ,Text('Delivery time',style: TextStyle(fontSize: 11,color: Color(0xFF6F6C6C)),)
                          ],
                        )
                    ],
                  )

                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 16.h, bottom: 12.h),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 12.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 12.h,
                            ),
                            Image.asset(
                              'images/img_home/img_cup.png',
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 11.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wiener Schnitze',
                                    style: TextStyle(
                                      color: Color(0xFF0D0D0D),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Cafe, Healthy Food, Breakfast',
                                      style: TextStyle(
                                          wordSpacing: 5,
                                          color: Color(0xFF6F6C6C),
                                          fontSize: 13),
                                      maxLines: 2,
                                      softWrap: true),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text('14 K.D',style: TextStyle(
                                    color: Color(0xFFC92026),
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(
                              width:38.w ,
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isTap=!isTap;

                                });
                              },
                              child: Card(

                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Color(0xFFF8E4D2)
                                  )
                                ),
                                child:isTap==false ? Image.asset('images/img_home/Addtocart.png') : Image.asset('images/img_home/Addtocart2.png',
                              ),
                            )

                            // SizedBox(height: 85.h,)
                            )]
                        ),
                      ),
                    ),
                  );
                })


          ],
        ),
      ),
    );
  }
}
