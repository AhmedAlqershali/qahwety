import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactusUsScreen extends StatefulWidget {
  const ContactusUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactusUsScreen> createState() => _ContactusUsScreenState();
}

class _ContactusUsScreenState extends State<ContactusUsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xFFC92026),
          title: Text('Contact Us'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          child: Stack(
            children: [
              Image.asset('images/Contact.jpeg',height: 320.h,width: double.infinity.w,fit: BoxFit.cover,),
              Positioned(
                top: 207.h,
               left: 50.w,
               child: Row(
                 children: [
                   ElevatedButton(
                       onPressed: (){}, child: Column(

                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left:10.w,right: 70.w,top: 15.h),
                         child: Text('Phone',style: TextStyle(color: Colors.white),),
                       ),
                       SizedBox(
                         height:5.h ,
                       ),
                       Padding(
                         padding:  EdgeInsets.only(left:10.w,right: 20.w),
                         child: Text('+ 00965000000',style: TextStyle(color: Colors.white),),
                       )


                     ],

                   ),
                     style: ElevatedButton.styleFrom(
                       elevation: 0,
                       primary: Colors.transparent,
                       side: BorderSide(
                           width: 1,
                           color: Color(0xFFDA6368)
                       ),
                       maximumSize: Size(190.w, 60.h),
                       padding: EdgeInsets.zero

                     ),
                   ),
                   SizedBox(
                     width: 15.w,
                   ),
                   ElevatedButton(
                       onPressed: (){}, child: Column(

                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left:10.w,right: 70.w,top: 15.h),
                         child: Text('Email',style: TextStyle(color: Colors.white),),
                       ),
                       SizedBox(
                         height:5.h ,
                       ),
                       Padding(
                         padding:  EdgeInsets.only(left:10.w,right: 20.w),
                         child: Text('info@qah.com',style: TextStyle(color: Colors.white),),
                       )


                     ],

                   ),
                     style: ElevatedButton.styleFrom(
                       elevation: 0,
                       primary: Colors.transparent,
                       side: BorderSide(
                           width: 1,
                           color: Color(0xFFDA6368)
                       ),
                       maximumSize: Size(190.w, 60.h),
                       padding: EdgeInsets.zero

                     ),
                   ),

                 ],
               ),
             ),
              Positioned(
                top: 287.h,
                  left: 20.w,
                  right: 20.w,

                  child:Card(
                    child: Column(
                      children: [
                        SizedBox(height: 23.h,),
                        Text('Get in Touch'),
                        Padding(
                          padding:  EdgeInsets.only(left: 20.w,top: 18.h,right: 20.w,),
                          child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Name',
                                constraints: BoxConstraints(
                                  // minHeight: 50,
                                    maxHeight: 50.h,
                                    maxWidth: 295.w),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xFFE2E2E2))),

                              )
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 20.w,top: 16.h,right: 20.w,),
                          child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Email Address',
                                constraints: BoxConstraints(
                                  // minHeight: 50,
                                    maxHeight: 50.h,
                                    maxWidth: 295.w),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xFFE2E2E2))),

                              )
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 20.w,top: 16.h,right: 20.w,),
                          child: TextField(
                            minLines: 4,
                              maxLines: null,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: 'Message',
                                constraints: BoxConstraints(
                                  // minHeight: 100,
                                    maxWidth: 295.w),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xFFE2E2E2))),

                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Send'),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(295.w, 50.h),
                                primary: Color(0xFFC92026)),
                          ),
                        ),


                      ],
                    ),
                  ))

            ],
          ),
        ),

      ),

    );
  }
}
