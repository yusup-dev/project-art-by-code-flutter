import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

import '../models/themes.dart';
import 'home/home_page.dart';
import 'academic/academic_page.dart';
import 'profile/profile_page.dart';
import 'dosen/dosen_page.dart';

class BottomNavBar extends StatefulWidget {
  static const nameRoute = "/bottomNavbar";
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screen = const [
    HomePage(),
    AcademicPage(),
    DosenPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (i) {
            setState(() {
              _selectedIndex = i;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.576),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 0 ? blueNight : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData("assets/icons/home.svg"),
                            size: 26.3,
                            color: _selectedIndex == 0 ? blueDark : greyColor,
                          ),
                        ),
                        Text("Home",
                            style: TextStyle(
                                color:
                                    _selectedIndex == 0 ? blueDark : greyColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12))
                      ],
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.576),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 1 ? blueNight : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData(
                                "assets/icons/curriculum.svg"),
                            size: 26.3,
                            color: _selectedIndex == 1 ? blueDark : greyColor,
                          ),
                        ),
                        Text("Akademik",
                            style: TextStyle(
                                color:
                                    _selectedIndex == 1 ? blueDark : greyColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12))
                      ],
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.576),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 2 ? blueNight : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData(
                                "assets/icons/dosenstaff.svg"),
                            size: 26.3,
                            color: _selectedIndex == 2 ? blueDark : greyColor,
                          ),
                        ),
                        Text("Dosen-Staff",
                            style: TextStyle(
                                color:
                                    _selectedIndex == 2 ? blueDark : greyColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12))
                      ],
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.576),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 3 ? blueNight : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData("assets/icons/campus.svg"),
                            size: 26.3,
                            color: _selectedIndex == 3 ? blueDark : greyColor,
                          ),
                        ),
                        Text("Profil",
                            style: TextStyle(
                                color:
                                    _selectedIndex == 3 ? blueDark : greyColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12))
                      ],
                    )),
                label: ""),
          ]);
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: Stack(
          children: _screen
              .asMap()
              .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selectedIndex != i,
                    child: screen,
                  )))
              .values
              .toList()),
    );
  }
}
