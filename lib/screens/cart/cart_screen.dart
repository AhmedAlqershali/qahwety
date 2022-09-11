import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/cart/checkout_screen.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();

}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFC92026),
              leading: Row(
                children: [
                  SizedBox(
                    width: 6.w,
                  ),
                  Image.asset(
                    'images/img_home/Wallet.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '65',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              title: Image.asset('images/img_home/Mark.png'),
              centerTitle: true,

            ),
            body: Container(
                color: Colors.grey,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return  Slidable(
                        key: const ValueKey(0),
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          dismissible: DismissiblePane(onDismissed: (){},),
                          children: [
                            SlidableAction(
                              backgroundColor: Color(0xFFC92026),
                              icon: Icons.delete,
                              label: 'Delete',
                              onPressed: (BuildContext context) {  },
                            )
                          ],
                        ),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'images/img_home/img_cup.png',
                                      width: 64.w,
                                      height: 64.h,
                                    )
                                  ],
                                ),
                                SizedBox(width: 10.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Wiener Schnitze',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      'Cafe Bateel',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Text(
                                      '14 K.D',
                                      style: TextStyle(fontSize: 14,color: Color(0xFFC92026)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Image.asset(
                                      'images/img_home/Plus.jpeg',
                                      height: 24.h,
                                      width: 24.w,
                                    )),
                                    Text('1',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                                    IconButton(onPressed: (){}, icon: Image.asset(
                                      'images/img_home/Minus.jpeg',
                                      height: 24.h,
                                      width: 24.w,
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })),

            bottomSheet: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 64,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:16.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'TOTAL: ',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            '46.39 K.D',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFC92026)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ElevatedButton(

                        onPressed: () =>Get.to(CheckoutScreen()),
                        child: Text('Check out'),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(130.w, 44.h),
                            primary:Color(0xFFC92026)),


                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}