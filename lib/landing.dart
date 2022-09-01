import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:tasmik/app/fiqih/fiqh_view.dart';
import 'package:tasmik/app/tajwid/tajwid_view.dart';
import 'package:tasmik/constant.dart';
import 'package:tasmik/home.dart';
import 'package:tasmik/settings/settings_view.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  late int _bottomNavIndex = 0;
  final List<Widget> _container = [
    const Home(),
    const TajwidView(),
    const FiqhView(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        selectedFontSize: 12,
        fixedColor: aksen2Color,
        unselectedItemColor: secondaryColor,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        currentIndex: _bottomNavIndex,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                CupertinoIcons.house_fill,
              ),
              icon: Icon(
                CupertinoIcons.house,
              ),
              label: "Beranda"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                CupertinoIcons.bookmark_fill,
              ),
              icon: Icon(
                CupertinoIcons.bookmark,
              ),
              label: "Tersimpan"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                CupertinoIcons.clock_fill,
              ),
              icon: Icon(
                CupertinoIcons.clock,
              ),
              label: "Riwayat"),
          BottomNavigationBarItem(
            activeIcon: Icon(
              CupertinoIcons.gear_solid,
            ),
            icon: Icon(
              CupertinoIcons.gear,
            ),
            label: "Setelan",
          ),
        ],
      ),
    );
  }
}
