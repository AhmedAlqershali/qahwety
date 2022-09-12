import 'package:flutter/material.dart';

import 'package:qahwety/screens/profile/profile_screen.dart';
import 'package:qahwety/screens/settings/settings.dart';

import '../models/bn_screen_item.dart';
import 'cart/cart_screen.dart';
import 'home/home_screen.dart';
import 'menu/menu_screen.dart';

class BnScreen extends StatefulWidget {
  const BnScreen({Key? key}) : super(key: key);

  @override
  State<BnScreen> createState() => _BnScreenState();
}

class _BnScreenState extends State<BnScreen> {
  int _currentIndex = 0;
  final List<BnItem> _bnScreens = <BnItem>[
     BnItem(widget: HomeScreen(), title: '' ),
     BnItem(widget: CartScreen(), title: ''),
     BnItem(widget: ProfileScreen(), title: ''),
     BnItem(widget: SettingsScreen(), title: ''),
     BnItem(widget: MenuScreen(), title: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _bnScreens[_currentIndex].widget,

        bottomNavigationBar: BottomNavigationBar(
          onTap: (int itemIndex) {
            setState(() {
              _currentIndex = itemIndex;
            });
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue.shade900,
          unselectedItemColor: Colors.black26,
          items:  [
            BottomNavigationBarItem(
                icon: Image.asset('images/img_btoomNav/Home.png') ,
                activeIcon:Image.asset('images/img_btoomNav/Active.png') ,
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Image.asset('images/img_btoomNav/Cart.png'),
                activeIcon: Image.asset('images/img_btoomNav/ActiveCart.png'),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('images/img_btoomNav/Profile.png'),
                activeIcon: Image.asset('images/img_btoomNav/ActiveProfile.png'),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('images/img_btoomNav/Settings.png'),
                activeIcon: Image.asset('images/img_btoomNav/ActiveSettings.png'),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('images/img_btoomNav/Menu.png'),
                activeIcon: Image.asset('images/img_btoomNav/ActiveMenu.png'),
                label: ''),
          ],
        ),
      ),
    );
  }

}
