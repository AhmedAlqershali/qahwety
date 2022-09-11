import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';


class PayScreen extends StatelessWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 75,),
            Image.asset(
              'images/pay.png',
              width: 72,
              height: 72,
            ),
            SizedBox(height: 30,),
            Text(
              'Payment Successfully',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 15,),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){Get.off(HomeScreen()); },
              child: Container(
                height: 64,
                width: double.infinity,
                color: Color(0xFFC92026),
                child: Center(
                    child: Text(
                      'Done',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
            ),
          ),
    )
    );
  }
}
