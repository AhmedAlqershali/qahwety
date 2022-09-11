import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsStatus = false;
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC92026),
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column (
          children: [
            SizedBox(
              height: 18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Text('Notifications'),
                SizedBox(
                  width: 160.w,
                ),
                AdvancedSwitch(
                  controller: _controller,
                  activeColor: Color(0xFFC92026),
                  inactiveColor: Colors.grey,


                  borderRadius: BorderRadius.all(const Radius.circular(20)),
                  width: 50.0,
                  height: 35.0,
                  enabled: true,
                  disabledOpacity: 0.5,
                ),

              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Text('Language'),
                SizedBox(
                  width: 100.w,
                ),
                ToggleSwitch(
                  fontSize: 16.0,
                  initialLabelIndex: 1,
                  activeBgColor: [Color(0xFFC92026)],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Colors.grey,
                  totalSwitches: 2,
                  cornerRadius: 20.0,
                  borderWidth: 2.0,
                  borderColor: [Color(0xffD8CCC0)],
                  labels: ['EN', 'AR'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),

              ],
            ),




            GestureDetector(
              onTap: (){},
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 16.w,bottom: 14.h,top: 18.h),
                      child: Text('Terms of use'),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),)
                  ],
                ),
              ),
            ),
            Divider(),

            GestureDetector(
              onTap: (){},
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 16.w,bottom: 14.h,top: 18.h),
                      child: Text('Privacy Policy'),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),),
                  ],
                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
