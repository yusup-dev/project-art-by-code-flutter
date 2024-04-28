import 'package:aplikasi_sato/screen/home/pages/notification/notification.dart';
import 'package:aplikasi_sato/screen/home/pages/search/search.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sato/themes.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'component/data_card.dart';
import 'component/card_list.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = "/homePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _categories = ["All", "Terdekat", "Rating Tertinggi"];

  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Container(
            height: 228,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/header.png"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 49, left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat Malam',
                            style: mediumText16.copyWith(color: whiteColor),
                          ),
                          Text('Dyana Saputry',
                              style:
                                  semiBoldText14.copyWith(color: whiteColor)),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Notif()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              SvgIcon(
                                icon:
                                    const SvgIconData("assets/icons/bell.svg"),
                                color: whiteColor,
                                size: 32,
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, right: 5),
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: whiteColor,
                                        width: 1.0,
                                        style: BorderStyle.solid,
                                      ),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 29),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 14),
                      decoration: BoxDecoration(
                          color: whiteTransparent,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: whiteColor,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Cari Disini",
                            style: semiReguler14.copyWith(color: whiteColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              child: Container(
            margin: const EdgeInsets.only(top: 205, left: 16, right: 16),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: greyColored,
                  offset: const Offset(
                    0.5,
                    0.5,
                  ),
                  blurRadius: 1.0,
                )
              ],
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 13,
                bottom: 13,
                left: 16,
                right: 41.5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/star.png"),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(color: whiteColor),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Point Saya",
                                  style:
                                      mediumText10.copyWith(color: greyColor)),
                              Text(
                                "100.000",
                                style:
                                    semiBoldText16.copyWith(color: greenColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: greyColored,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/discon.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Voucher",
                                    style: mediumText10.copyWith(
                                        color: greyColor)),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "15",
                                      style:
                                          semiBoldText16.copyWith(color: black),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 4),
                                      decoration: BoxDecoration(
                                          color: greenColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        child: Text(
                                          "Voucher Baru",
                                          style: semiReguler8.copyWith(
                                              color: whiteColor),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      );
    }

    Widget category() {
      return Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 12),
            child: Row(
              children: [
                Text(
                  "Kategori Layanan",
                  style: boldText16.copyWith(color: black),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/car.svg"),
                      Text(
                        "Carwars",
                        style: mediumText14.copyWith(color: black),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/vespa.svg"),
                      Text("Spotwash",
                          style: mediumText14.copyWith(color: black))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/magic.svg"),
                      Text("Detailing",
                          style: mediumText14.copyWith(color: black))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget warn() {
      return Container(
          margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
          width: double.infinity,
          height: 122,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: whiteColor,
            border: Border.all(
              color: greenColor,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4, top: 2),
                          child: Icon(
                            Icons.circle,
                            size: 12,
                            color: redColor,
                          ),
                        ),
                        Text(
                          'Silahkan Konfirmasi order datang ke outlet',
                          style: mediumText14.copyWith(color: redColor),
                        ),
                      ],
                    ),
                    Text(
                      "20:56",
                      style: boldText16.copyWith(color: greenColor),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Carwash Park Paramount Gading Serpong",
                      style: mediumText16.copyWith(color: black),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Cuci Robotic Reguler",
                      style: mediumText14.copyWith(color: greyColor),
                    )
                  ],
                )
              ],
            ),
          ));
    }

    Widget promo() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Promo Terbaru",
                  style: boldText16.copyWith(color: black),
                ),
                Text(
                  "Lihat ainnya",
                  style: mediumText14.copyWith(color: greenColor),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Image.asset("assets/images/banner1.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Image.asset("assets/images/banner2.png"),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget outlet() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Outlet Terdekat Berdasarkan",
                  style: boldText16.copyWith(color: black),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget categories(int index) {
      return InkWell(
        onTap: () {
          setState(() {
            _isSelected = index;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 8),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: _isSelected == index ? greenColor : whiteColor,
            border: _isSelected == index
                ? Border.all(width: 0, color: Colors.transparent)
                : Border.all(width: 1, color: greyColored),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            _categories[index],
            style: TextStyle(
              color: _isSelected == index ? whiteColor : black,
            ),
          ),
        ),
      );
    }

    Widget listCategories() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: _categories
                    .asMap()
                    .entries
                    .map((MapEntry map) => categories(map.key))
                    .toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget listCard() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 10.0,
          runSpacing: 10.0,
          children: cardList
              .asMap()
              .entries
              .map((MapEntry map) => CardLists(info: cardList[map.key]))
              .toList(),
        ),
      );
    }

    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                category(),
                warn(),
                promo(),
                outlet(),
                listCategories(),
                listCard(),
              ],
            )
          ],
        )
      ],
    ));
  }
}
