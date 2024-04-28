import 'package:aplikasi_sato/screen/home/component/card_list.dart';
import 'package:aplikasi_sato/screen/home/component/data_card.dart';
import 'package:aplikasi_sato/screen/home/pages/search/search.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../themes.dart';

class OutletPage extends StatefulWidget {
  static const nameRoute = "/outlet";
  const OutletPage({super.key});
  @override
  State<OutletPage> createState() => _OutletPageState();
}

class _OutletPageState extends State<OutletPage> {
  List<Map<String, dynamic>> categories = [
    {'text': 'All'},
    {'text': 'Carwash'},
    {'text': 'Spotwash'},
    {'text': 'Detailing'},
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget listCategories() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: greyColored),
              ),
              child: Row(
                children: [
                  SvgIcon(
                    icon: const SvgIconData("assets/icons/filter.svg"),
                    size: 18,
                    color: black,
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Filter",
                    style: semiReguler16.copyWith(color: greyColor),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(categories.length, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 8),
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(
                        color: selectedIndex == index ? greenColor : whiteColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1,
                            color: selectedIndex == index
                                ? greenColor
                                : greyColored)),
                    child: Row(
                      children: [
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
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Daftar Outlet",
                      style: semiBoldText16.copyWith(color: whiteColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Search()));
                      },
                      child: Icon(
                        Icons.search_sharp,
                        size: 24,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  listCategories(),
                  const SizedBox(
                    height: 24,
                  ),
                  listCard(),
                ],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
