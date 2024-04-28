import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../../themes.dart';

class Notif extends StatefulWidget {
  static const nameRoute = "/notif";
  const Notif({super.key});

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  List<Map<String, dynamic>> categories = [
    {'icon': "assets/icons/car2.svg", 'text': 'Info'},
    {'icon': "assets/icons/motor.svg", 'text': 'Promo'},
    {'icon': "assets/icons/magic2.svg", 'text': 'Transaksi'},
  ];

  List<Map<String, dynamic>> categoriesi = [
    {'red': "Hari Ini, 14.46"},
    {'red': "Hari Ini, 14.46"},
    {'red': "Hari Ini, 14.46"},
    {'red': "Hari Ini, 14.46"},
    {'red': "Hari Ini, 14.46"},
    {'red': "Hari Ini, 14.46"},
    {'red': "Hari Ini, 14.46"},
  ];

  List<Map<String, dynamic>> messages = [
    {
      'time': 'Hari Ini, 14.46',
      'title': 'Hore, dapat 100 point sato reward',
      'text':
          'Karna kamu sudah menyelesaikan misi verifikasi Nomornya, Nambah Pointnya. Yuk, selesaikan dan menangkan hadiahnya!'
    },
  ];

  int selectedIndex = 0;
  int selectedIndexs = 0;
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: List.generate(categories.length, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                      color: selectedIndex == index ? greenColor : whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1,
                          color: selectedIndex == index
                              ? greenColor
                              : greyColored),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          categories[index]['icon'],
                          color:
                              selectedIndex == index ? whiteColor : greyColor,
                          width: 19,
                          height: 19,
                        ),
                        const SizedBox(
                          width: 9.27,
                        ),
                        Text(
                          categories[index]['text'],
                          style: TextStyle(
                            color:
                                selectedIndex == index ? whiteColor : greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Terbaru",
              style: mediumText16.copyWith(color: greyColor),
            ),
          ),
          Column(
            children: List.generate(categoriesi.length, (index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndexs = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1, color: greyColored),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgIcon(
                                      icon: const SvgIconData(
                                          "assets/icons/about.svg"),
                                      color: black,
                                      size: 12,
                                    ),
                                    const SizedBox(
                                      width: 8.18,
                                    ),
                                    Text(
                                      "Info",
                                      style:
                                          mediumText12.copyWith(color: black),
                                    )
                                  ],
                                ),
                                Text(
                                  categoriesi[index]['red'],
                                  style:
                                      semiReguler12.copyWith(color: greyColor),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Hore, dapat 100 point sato reward",
                              style: semiBoldText16.copyWith(color: black),
                            ),
                            Text(
                              "Karna kamu sudah menyelesaikan misi verifikasi Nomornya, Nambah Pointnya. Yuk, selesaikan dan menangkan hadiahnya!",
                              style: semiReguler14.copyWith(color: greyColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: whiteColor,
                      ),
                    ),
                    Text(
                      "Notification",
                      style: semiBoldText16.copyWith(color: whiteColor),
                    ),
                    const SizedBox(
                      width: 24,
                    )
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
                children: [
                  body(),
                ],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
