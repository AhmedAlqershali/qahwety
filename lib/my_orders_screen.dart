import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qahwety/widget/my_order.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC92026),
        leading: IconButton(onPressed: (){}, icon: Image.asset('images/img_home/Close.png')),
        title: Text('My Order'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset('images/img_home/Check.png'))
        ],


      ),
    body: ListView(
      shrinkWrap: true,
      children: [
        TabBar(

            controller: _tabController,
            indicatorColor: Colors.blue,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: ' Open Orders',
              ),
              Tab(
                text: 'Completed Orders',
              ),
            ]),
        Container(
          child: SizedBox(
            height: MediaQuery.of(context).size.height.h,

            child: TabBarView(
              controller: _tabController,

              children: [
                ListView.builder(

                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Cafe Bateel',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14
                              ),),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text('12 Feb 2018',style: TextStyle(
                                  color: Color(0xFF6F6C6C),
                                  fontSize: 14
                              ),),

                            ],
                          ),
                          Divider(),
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Text('Order summary'),
                                    ],
                                  ),
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16, horizontal: 5),
                                        child: Container(
                                          color: Colors.white,
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
                                              SizedBox(
                                                width: 10.w,
                                              ),
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
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xFFC92026)),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Column(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                            Color(0xFFF8E4D2))),
                                                    child: Text('QTY 1'),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          ),


                        ],
                      ),
                    );

                  },

                ),
                ListView.builder(

                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Cafe Bateel',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14
                              ),),
                              SizedBox(
                                width: 16.w,
                              ),
                              Text('12 Feb 2018',style: TextStyle(
                                  color: Color(0xFF6F6C6C),
                                  fontSize: 14
                              ),),

                            ],
                          ),
                          Divider(),
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Text('Order summary'),
                                    ],
                                  ),
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16, horizontal: 5),
                                        child: Container(
                                          color: Colors.white,
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
                                              SizedBox(
                                                width: 10.w,
                                              ),
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
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xFFC92026)),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Column(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                            Color(0xFFF8E4D2))),
                                                    child: Text('QTY 1'),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          ),


                        ],
                      ),
                    );

                  },

                ),

              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}
