import 'package:aplikasi_sato/screen/profile/pages/about/about.dart';
import 'package:aplikasi_sato/screen/profile/pages/edit/edit.dart';
import 'package:aplikasi_sato/screen/profile/pages/order/order.dart';
import 'package:aplikasi_sato/screen/profile/pages/password/password.dart';
import 'package:aplikasi_sato/screen/profile/pages/setting/setting.dart';
import 'package:aplikasi_sato/screen/profile/pages/term/term.dart';
import 'package:aplikasi_sato/screen/profile/pages/vehicle/vehicle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../themes.dart';

class ProfilePage extends StatefulWidget {
  static const nameRoute = "/user";
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("assets/images/avatar.png"),
                const SizedBox(
                  width: 14,
                ),
                Column(
                  children: [
                    Text(
                      "Dyana Saputri",
                      style: semiBoldText20.copyWith(color: black),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "(+62) 8561 552545",
                      style: mediumText14.copyWith(color: greyColor),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: greyColored),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/star2.png"),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        "159.000",
                        style: mediumText16.copyWith(color: black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Info',
                        style: mediumText14.copyWith(color: greenColor),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SvgIcon(
                        icon: const SvgIconData("assets/icons/arrow.svg"),
                        size: 12,
                        color: greenColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              "Akun",
              style: mediumText16.copyWith(color: black),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Edit()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/edit.svg"),
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Edit Profile",
                      style: semiReguler16.copyWith(color: black),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Vehicle()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/car2.svg"),
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Kendaraan Saya",
                      style: semiReguler16.copyWith(color: black),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Order()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgIcon(
                          icon: const SvgIconData("assets/icons/pesanan.svg"),
                          color: greenColor,
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Text(
                          "Pesanan Saya",
                          style: semiReguler16.copyWith(color: black),
                        )
                      ],
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: greenColor),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Order()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/riwayat.svg"),
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Riwayat Pesanan",
                      style: semiReguler16.copyWith(color: black),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Password()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/key.svg"),
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Ganti Password",
                      style: semiReguler16.copyWith(color: black),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "General",
              style: mediumText16.copyWith(color: black),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: greyColored),
                ),
              ),
              child: Row(
                children: [
                  SvgIcon(
                    icon: const SvgIconData("assets/icons/faq.svg"),
                    color: greenColor,
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Text(
                    "FAQ",
                    style: semiReguler16.copyWith(color: black),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const About()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/about.svg"),
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      "About",
                      style: semiReguler16.copyWith(color: black),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Term()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/term.svg"),
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Term And Condition",
                      style: semiReguler16.copyWith(color: black),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: greyColored),
                  ),
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/setting.svg"),
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Settings",
                      style: semiReguler16.copyWith(color: black),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Log out",
                    style: mediumText18.copyWith(color: redColor),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Versi aplikasi 2.3.4",
                    style: semiReguler14.copyWith(color: greyColor),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 102,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/header.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Profil Saya",
                  style: semiBoldText16.copyWith(color: whiteColor),
                ),
              ]),
            ),
            Positioned(
                child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 17),
              margin: const EdgeInsets.only(top: 84),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [header()],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
