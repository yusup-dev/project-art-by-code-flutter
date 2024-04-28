import 'package:aplikasi_sato/screen/home/pages/component/data_list.dart';
import 'package:aplikasi_sato/screen/home/pages/component/list_card.dart';
import 'package:aplikasi_sato/themes.dart';
import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:flutter_svg/svg.dart';

class BannerImages {
  static const String banner1 = "assets/images/img6.png";
  static const String banner2 = "assets/images/img6.png";
  static const String banner3 = "assets/images/img6.png";
  static const String banner4 = "assets/images/img6.png";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}

class OutletDetail extends StatefulWidget {
  static const nameRoute = "/outletDetail";

  const OutletDetail({super.key});

  @override
  State<OutletDetail> createState() => _OutletDetailState();
}

class _OutletDetailState extends State<OutletDetail> {
  List<Map<String, dynamic>> categories = [
    {'icon': "assets/icons/car2.svg", 'text': 'Carwash'},
    {'icon': "assets/icons/motor.svg", 'text': 'Spotwash'},
    {'icon': "assets/icons/magic2.svg", 'text': 'Detailing'},
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget widget1() {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 4,
              width: 60,
              decoration: BoxDecoration(
                  color: greyColored, borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Carwash park paramount gading serpong",
              style: semiBoldText20.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      color: yellowColored,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SvgIcon(
                        icon: const SvgIconData("assets/icons/grup.svg"),
                        color: yellowColor,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "0 Antrian",
                        style: mediumText16.copyWith(color: yellowColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      color: greenColored,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SvgIcon(
                        icon: const SvgIconData("assets/icons/panah.svg"),
                        color: greenColor,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "25 KM",
                        style: semiBoldText16.copyWith(color: greenColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.8,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "4,9",
                      style: semiBoldText16.copyWith(color: black),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Ruko Pisa Grade Paramount, Jalan Ir. Soekarno, Curug Sanggerang, Kabupaten Tanggerang, Banten, Indonesia",
              style: semiReguler16.copyWith(color: black),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      SvgIcon(
                        icon: const SvgIconData("assets/icons/plane.svg"),
                        size: 15.77,
                        color: whiteColor,
                      ),
                      const SizedBox(
                        width: 11.04,
                      ),
                      Text(
                        "Arahkan",
                        style: semiBoldText16.copyWith(color: whiteColor),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget listCategories() {
      return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: greyColored,
          width: 1,
        ))),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(categories.length, (index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      color: tranparent,
                      border: Border(
                          bottom: BorderSide(
                        color: selectedIndex == index ? greenColor : tranparent,
                        width: 2,
                      ))),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        categories[index]['icon'],
                        color: selectedIndex == index ? greenColor : greyColor,
                        width: 19,
                        height: 19,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        categories[index]['text'],
                        style: TextStyle(
                          color:
                              selectedIndex == index ? greenColor : greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      );
    }

    Widget cardOutlet() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 10.0,
          runSpacing: 10.0,
          children: listCards
              .asMap()
              .entries
              .map((MapEntry map) => ListCard(info: listCards[map.key]))
              .toList(),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Column(
              children: <Widget>[
                BannerCarousel.fullScreen(
                  banners: BannerImages.listBanners,
                  customizedIndicators: const IndicatorModel.animation(
                    width: 20,
                    height: 5,
                    spaceBetween: 2,
                    widthAnimation: 50,
                  ),
                  height: 313,
                  activeColor: greenColor,
                  disableColor: Colors.white,
                  animation: true,
                  indicatorBottom: false,
                  initialPage: 3,
                ),
              ],
            ),
            Positioned(
                child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 57, left: 16),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: blackColor, borderRadius: BorderRadius.circular(8)),
                child: SvgIcon(
                  icon: const SvgIconData("assets/icons/arrowleft.svg"),
                  color: whiteColor,
                ),
              ),
            )),
            Positioned(
                child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 221),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  widget1(),
                  listCategories(),
                  const SizedBox(
                    height: 28,
                  ),
                  cardOutlet(),
                ],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
