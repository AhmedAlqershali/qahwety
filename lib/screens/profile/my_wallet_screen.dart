import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/profile/transfer_successfully_screen.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> with SingleTickerProviderStateMixin{

  late TextEditingController _emailTextController;

  late TabController _tabController;
  int _currentPage = 0;
  bool isTrue=false;
  String? _emailError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _emailTextController = TextEditingController();

  }

  @override
  void dispose() {
    _tabController.dispose();
    _emailTextController.dispose();

    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC92026),
        leading: IconButton(onPressed: (){}, icon: Image.asset('images/img_home/Close.png')),
        title: Text('My Wallet'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset('images/img_home/Check.png'))
        ],


      ),

      body: ListView(
        children: [
          Divider(color:Colors.white30 ,height: .5.h,),
          Container(
            color:Color(0xFFC92026) ,
            height: 80.h,
            width: 375.w,
            child: Padding(
              padding:  EdgeInsets.only(top: 14.h,left: 155.w,right: 145.w),
              child: Column(


                children: [
                  Text('Balance',style: TextStyle(color: Colors.white,),),
                  Row(
                    children: [
                      Text('250 ',style: TextStyle(color: Colors.white,fontSize:22 ),),
                      Text('K.W',style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  )

                ],
              ),
            ),
          ),
          TabBar(

              controller: _tabController,
              indicatorColor: Color(0xFFC92026),
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: ' Transactions',
                ),
                Tab(
                  text: 'Transfer',
                ),
              ]),
          Container(
            height: MediaQuery.of(context).size.height.h,

            child: TabBarView(

                controller: _tabController,

                children: [
                  ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Transfer balance',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17
                                          ),

                                        ),
                                        Text(
                                          '19 Sep 2018',
                                          style: TextStyle(color: Color(0xFF6F6C6C),fontSize: 13),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text('17 K.D',style: TextStyle(color:Color(0xFFC92026) ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(height: .5.h,)

                          ],
                        );
                      }),
                  Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                          left: 40.w,
                          top: 22.h,
                          right: 40.w,
                          bottom: 22.h
                        ),
                        child: Text('You can transfer balance from your wallet to there people',textAlign: TextAlign.center,style: TextStyle(
                          color: Color(0xFF6F6C6C),
                          fontSize: 15.sp,
                          wordSpacing: 3.sp,

                        ),),
                      ),
                      TextField(
                          // controller: _emailTextController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            // errorText: _emailError,
                            hintText: 'Amount',
                            constraints: BoxConstraints(
                              minHeight: 50,
                              //   maxHeight: 50.h,
                                maxWidth: 375.w),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                          )
                      ),
                      TextField(
                          controller: _emailTextController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            errorText: _emailError,
                            hintText: 'Email Address',
                            constraints: BoxConstraints(
                              minHeight: 50,
                                // maxHeight: 50.h,
                                maxWidth: 375.w),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                          )
                      ),


                    ],
                  )


                ]),
          ),


        ],


      ),
      bottomSheet: ElevatedButton(

        onPressed: ()=>Get.to(TransferSuccessfullyScrren()),
        child: Text('Transfer',style: TextStyle(
            color: Colors.white
        ),),
        style: ElevatedButton.styleFrom(

          side: BorderSide(
              width: 1.w,
              color: Color(0xFFE2E2E2)
          ),
          primary: Color(0xFFC92026),
          minimumSize: Size(375.w, 50.h),


        ),
      ),
    );
  }
}
