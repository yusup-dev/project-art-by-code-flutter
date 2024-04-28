import 'package:aplikasi_sato/screen/home/pages/detail/sevices/booking_order/booking_order.dart';
import 'package:aplikasi_sato/themes.dart';
import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

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

class Services extends StatefulWidget {
  static const nameRoute = "/services";

  const Services({
    super.key,
  });

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<Map<String, dynamic>> categories = [
    {'title': "Mobil", 'writer': 'Brio Satiya A/T 2019', 'no': 'No CC123F'},
    {'title': "Mobil", 'writer': 'Brio Satiya A/T 2019', 'no': 'No CC123F'},
  ];
  bool isChecked = false;
  bool inChecked = false;
  bool yesChecked = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return greenColor;
    }

    Widget widget1() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            height: 4,
            width: 60,
            decoration: BoxDecoration(
                color: greyColored, borderRadius: BorderRadius.circular(8)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Rp. 150.000,00",
                      style: boldText24.copyWith(color: greenColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Cuci Mobil dan Fogging",
                      style: mediumText20.copyWith(color: black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Outlet Carwash park paramount gading serpong.",
                      style: semiReguler14.copyWith(color: greyColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SvgIcon(
                          icon: const SvgIconData("assets/icons/map.svg"),
                          size: 12,
                          color: black,
                        ),
                        const SizedBox(
                          width: 10.85,
                        ),
                        Text(
                          "Curug Sanggerang, Kabupaten Tanggerang",
                          style: semiReguler12.copyWith(color: black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Enim dui adipiscing et magna risus mauris quam odio. Amet",
                      style: semiReguler16.copyWith(color: black),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Add Ons",
                      style: semiBoldText16.copyWith(color: black),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: greyColored, width: 1))),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bersih sampai mesin dalam",
                          style: semiReguler16.copyWith(color: black),
                        ),
                        Row(
                          children: [
                            Text(
                              'Free',
                              style: semiBoldText14.copyWith(color: black),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              side: BorderSide(color: greyColor, width: 1.0),
                              visualDensity: VisualDensity.compact,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cuci stim",
                          style: semiReguler16.copyWith(color: black),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp. 5.000',
                              style: semiBoldText14.copyWith(color: black),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              side: BorderSide(color: greyColor, width: 1.0),
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: inChecked,
                              visualDensity: VisualDensity.compact,
                              onChanged: (bool? value) {
                                setState(() {
                                  inChecked = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bersin mesin large",
                          style: semiReguler16.copyWith(color: black),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp. 5.000',
                              style: semiBoldText14.copyWith(color: black),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              side: BorderSide(color: greyColor, width: 1.0),
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: yesChecked,
                              visualDensity: VisualDensity.compact,
                              onChanged: (bool? value) {
                                setState(() {
                                  yesChecked = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: greyColored, width: 1))),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pilih Kendaraan",
                          style: semiBoldText16.copyWith(color: black),
                        ),
                        Text(
                          "Tambah",
                          style: mediumText14.copyWith(color: greenColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categories.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        width: 275,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 17),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: selectedIndex == index
                                  ? greenColor
                                  : greyColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                          color:
                              selectedIndex == index ? greenWhite : whiteColor,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: selectedIndex == index
                                        ? greenColor
                                        : greyColor,
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(50.0),
                                color: selectedIndex == index
                                    ? greenColord
                                    : whiteColor,
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categories[index]['title'],
                                  style: mediumText18.copyWith(color: black),
                                ),
                                Text(
                                  categories[index]['writer'],
                                  style:
                                      semiReguler14.copyWith(color: greyColor),
                                ),
                                Text(
                                  categories[index]['no'],
                                  style: semiBoldText16.copyWith(color: black),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BookingOrder()));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Order",
                        style: semiBoldText16.copyWith(color: whiteColor),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 53,
              )
            ],
          ),
        ],
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
                child: Container(
              width: double.infinity,
              height: 84,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/header1.png"),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 22, right: 22),
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
                      "Detail Layanan",
                      style: semiBoldText16.copyWith(color: whiteColor),
                    ),
                    const SizedBox(
                      width: 24,
                    )
                  ],
                ),
              ),
            )),
            Positioned(
                child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 246),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  widget1(),
                ],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
