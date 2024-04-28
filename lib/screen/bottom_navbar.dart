import 'package:aplikasi_sato/screen/home/home_page.dart';
import 'package:aplikasi_sato/screen/profile/profile_page.dart';
import 'package:aplikasi_sato/screen/promo/promo_page.dart';
import 'package:aplikasi_sato/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

import 'outlet/outlet_page.dart';

class BottomNavBar extends StatefulWidget {
  static const nameRoute = "/";
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 1;

  final _screen = const [HomePage(), OutletPage(), PromoPage(), ProfilePage()];

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
                            color:
                                _selectedIndex == 0 ? greenColored : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData("assets/icons/home.svg"),
                            size: 26.3,
                            color: _selectedIndex == 0 ? greenColor : greyColor,
                          ),
                        ),
                        Text("Home",
                            style: TextStyle(
                                color: _selectedIndex == 0
                                    ? greenColor
                                    : greyColor,
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
                            color:
                                _selectedIndex == 1 ? greenColored : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData("assets/icons/outlet.svg"),
                            size: 26.3,
                            color: _selectedIndex == 1 ? greenColor : greyColor,
                          ),
                        ),
                        Text("Outlet",
                            style: TextStyle(
                                color: _selectedIndex == 1
                                    ? greenColor
                                    : greyColor,
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
                            color:
                                _selectedIndex == 2 ? greenColored : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData("assets/icons/promo.svg"),
                            size: 26.3,
                            color: _selectedIndex == 2 ? greenColor : greyColor,
                          ),
                        ),
                        Text("Promo",
                            style: TextStyle(
                                color: _selectedIndex == 2
                                    ? greenColor
                                    : greyColor,
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
                            color:
                                _selectedIndex == 3 ? greenColored : tranparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgIcon(
                            icon: const SvgIconData("assets/icons/profile.svg"),
                            size: 26.3,
                            color: _selectedIndex == 3 ? greenColor : greyColor,
                          ),
                        ),
                        Text("Profile",
                            style: TextStyle(
                                color: _selectedIndex == 3
                                    ? greenColor
                                    : greyColor,
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
