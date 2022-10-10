import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';
import 'package:flutter_aliexpress/view/AliexpressShopping.dart';
import 'package:flutter_aliexpress/view/aliexpress_account.dart';
import 'package:flutter_aliexpress/view/aliexpress_category.dart';
import 'package:flutter_aliexpress/view/aliexpress_home.dart';
import 'package:flutter_aliexpress/view/aliexpress_info.dart';
import 'package:flutter_aliexpress/view/aliexpress_wifi.dart';

class AliexpressBottomBar extends StatefulWidget {
  const AliexpressBottomBar({super.key});

  @override
  State<AliexpressBottomBar> createState() => _AliexpressBottomBarState();
}

class _AliexpressBottomBarState extends State<AliexpressBottomBar> {
  int _selectedIndex = 0;
  double _iconSize = 30;

  final List<Widget> screenList = [
    AliexpressHome(),
    AliexpressCategories(),
    AliexpressWifi(),
    AliexpressShopping(),
    AliexpressAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AliexpressConst.colorWhite,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AliexpressConst.colorRed,
        unselectedItemColor: AliexpressConst.colorBlack,
        currentIndex: _selectedIndex,
        iconSize: _iconSize,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: AliexpressConst.textBottomBarHome),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              label: AliexpressConst.textBottomBarCategory),
          BottomNavigationBarItem(
              icon: Icon(Icons.wifi), label: AliexpressConst.textBottomBarWifi),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: AliexpressConst.textBottomBarShopping),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: AliexpressConst.textBottomBarAccount),
        ],
      ),
      body: screenList.elementAt(_selectedIndex),
    );
  }
}
