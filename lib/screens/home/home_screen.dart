import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/home/cafeDetails_screen.dart';

import 'filter_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isCheck = false;
String? img, name, type;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          GestureDetector(
            onTap: () {
              Get.off(FilterScreen());
            },
            child: Image.asset(
              'images/img_home/Filter.png',
              height: 25.h,
              width: 25.w,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/img_home/img_home.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 220.w,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Image.asset('images/img_home/Search.png'),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isCheck = !isCheck;
                      });
                    },
                    icon: isCheck == false
                        ? Image.asset('images/img_home/Grid.png')
                        : Image.asset('images/img_home/List.png')),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Popular'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Recent'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Number of orders'),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      color: Color(0xFFC92026),
                                      height: 50,
                                      width: double.infinity,
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: Image.asset('images/img_home/Sort.png')),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return Container(
                              height: 650,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Any'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Al Ahmadi'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Hawalli'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('As Salimiyah'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Al Farwaniyah'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Sabah as Salim'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Al Fahahil'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Ar Rumaythiyah'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          child: Text('Salwa'),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        color: Color(0xFFC92026),
                                        height: 50,
                                        width: double.infinity,
                                        child: Center(
                                          child: Text(
                                            'Cancel',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: Image.asset('images/img_home/Location.png')),
              ],
            ),
            isCheck == false ? buildListView(context) : buildGridView(context),
          ],
        ),
      ),
    );
  }

  Widget buildListView(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () =>Get.to(CafeDetailsScreen()),
            child: Padding(
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
                        'images/img_home/Rectangle.png',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cafe Bateel',
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
                          ],
                        ),
                      ),
                      // SizedBox(height: 85.h,)
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget buildGridView(BuildContext context,) {
    return GridView.builder(
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
          return GestureDetector(
            onTap: () =>Get.to(CafeDetailsScreen()),
            child: Padding(
              padding: EdgeInsets.only(top: 20.h, left: 10.w),
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
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
                      child: Text('Cafe, Healthy Food, Breakfast',
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
            ),
          );
        });
  }
}
