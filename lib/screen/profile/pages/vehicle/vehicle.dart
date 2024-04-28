import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../../themes.dart';
import 'add.dart';
import 'edits.dart';

class Vehicle extends StatefulWidget {
  static const nameRoute = "/vehicle";
  const Vehicle({super.key});

  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Edits.nameRoute);
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: greyColored),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/pespa.svg"),
                        const SizedBox(
                          width: 11,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "F1353RTA",
                              style: mediumText18.copyWith(color: black),
                            ),
                            Text(
                              "Motor",
                              style: mediumText16.copyWith(color: black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                  color: greyColored,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Text(
                                "Pario Satiya A/T 2019",
                                style: semiReguler14.copyWith(color: black),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Dyana Saputri",
                              style: mediumText14.copyWith(color: greyColor),
                            )
                          ],
                        )
                      ],
                    ),
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/arrow.svg"),
                      color: greyColor,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Edits.nameRoute);
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: greyColored),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/mobil.svg"),
                        const SizedBox(
                          width: 11,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "F1353RTA",
                              style: mediumText18.copyWith(color: black),
                            ),
                            Text(
                              "Motor",
                              style: mediumText16.copyWith(color: black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                  color: greyColored,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Text(
                                "Pario Satiya A/T 2019",
                                style: semiReguler14.copyWith(color: black),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Dyana Saputri",
                              style: mediumText14.copyWith(color: greyColor),
                            )
                          ],
                        )
                      ],
                    ),
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/arrow.svg"),
                      color: greyColor,
                    )
                  ],
                ),
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      ),
                    ),
                    Text(
                      "Kendaraan Saya",
                      style: semiBoldText16.copyWith(color: whiteColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Add.nameRoute);
                      },
                      child: Icon(
                        Icons.add,
                        color: whiteColor,
                      ),
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
