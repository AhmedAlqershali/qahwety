import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParticipatingCoffeesScreen extends StatefulWidget {
  const ParticipatingCoffeesScreen({Key? key}) : super(key: key);

  @override
  State<ParticipatingCoffeesScreen> createState() => _ParticipatingCoffeesScreenState();
}

class _ParticipatingCoffeesScreenState extends State<ParticipatingCoffeesScreen> {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,


                    children: [

                      Image.asset(
                        'images/img_home/Rectangle.png',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Cafe Bateel',
                        style: TextStyle(
                          color: Color(0xFF0D0D0D),
                          fontSize: 18,
                        ),
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
