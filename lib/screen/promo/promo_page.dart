import 'package:aplikasi_sato/screen/promo/component/card_promo.dart';
import 'package:aplikasi_sato/screen/promo/component/data_card_promo.dart';
import 'package:aplikasi_sato/themes.dart';
import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget listCard() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 10.0,
          runSpacing: 10.0,
          children: listCardPromo
              .asMap()
              .entries
              .map((MapEntry map) => CardPromo(info: listCardPromo[map.key]))
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Promo",
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
                children: [listCard()],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
