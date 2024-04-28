import 'package:aplikasi_sato/screen/promo/component/data_card_promo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

import '../../../themes.dart';
import '../pages/detail/detail_promo.dart';

class CardPromo extends StatelessWidget {
  const CardPromo({Key? key, required this.info}) : super(key: key);

  final ListCardPromo info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPromo(),
                ));
          },
          child: Container(
            width: 379,
            decoration: BoxDecoration(color: whiteColor),
            child: Column(
              children: [
                Image.asset(info.imageAssets),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      border: Border.all(width: 1, color: greyColored)),
                  child: Row(
                    children: [
                      SvgIcon(
                        icon: const SvgIconData("assets/icons/clock.svg"),
                        color: greenColor,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 9.27,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            info.date,
                            style: semiReguler8.copyWith(color: greyColor),
                          ),
                          Text(
                            info.period,
                            style: mediumText15.copyWith(color: black),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
