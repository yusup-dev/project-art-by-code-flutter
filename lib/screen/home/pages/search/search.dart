import 'package:flutter/material.dart';
import '../../../../../../../../../../themes.dart';
import '../../component/card_list.dart';
import '../../component/data_card.dart';

class Search extends StatefulWidget {
  static const nameRoute = "/search";
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Map<String, dynamic>> categories = [
    {'text': 'Carwash'},
    {'text': 'Spotwash'},
    {'text': 'Detailing'},
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: TextStyle(fontSize: 16, color: black),
              decoration: InputDecoration(
                hintText: "Cari Disini",
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: greyColor,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenColored),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greyColored),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Kategori",
              style: semiBoldText18.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
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
                      "Search",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  body(),
                  const SizedBox(
                    height: 16,
                  ),
                  listCard()
                ],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
