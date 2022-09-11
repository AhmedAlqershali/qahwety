import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/screens/auth/forget_Password_screen.dart';
import 'package:qahwety/screens/auth/signIn_screen.dart';

import '../widget/page_view.dart';
import '../widget/select_page.dart';

class ViewPageScreen extends StatefulWidget {
  const ViewPageScreen({Key? key}) : super(key: key);

  @override
  State<ViewPageScreen> createState() => _ViewPageScreenState();
}

class _ViewPageScreenState extends State<ViewPageScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int value) {
                print('Page: #$value');
                setState(() => _currentPage = value);
              },
              scrollDirection: Axis.horizontal,
              children: [
                ViewPage(
                  img: 'Page 1.png',
                  name: 'Create Order',
                  subname:
                      'Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.',
                ),
                ViewPage(
                  img: 'Page 2.png',
                  name: 'Schedule & Pay',
                  subname:
                      'Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.',
                ),
                ViewPage(
                  img: 'Page 3.png',
                  name: 'Enjoy',
                  subname:
                      'Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 200.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              SelectPage(
                selected: _currentPage == 0,
              ),
              SelectPage(
                selected: _currentPage == 1,
                horizontalMargin: 20,
              ),
              SelectPage(
                selected: _currentPage == 2,
              ),
            ]),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 40.h),
            child: ElevatedButton(
              onPressed: ()=>Get.to(SignInScreen()),
              child: Text('Sign in'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(240.w, 50.h),
                  primary: Color(0xFFC92026)),
            ),
          ),

        ],
      ),
    );
  }
}
