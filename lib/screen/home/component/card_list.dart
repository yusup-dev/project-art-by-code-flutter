import 'package:aplikasi_sato/screen/home/pages/detail/detail.dart';
import 'package:aplikasi_sato/screen/home/pages/detail/sevices/booking_order/detail_order/detail_order.dart';
import 'package:aplikasi_sato/screen/home/pages/detail/sevices/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

import '../../../../themes.dart';
import 'data_card.dart';

class CardLists extends StatelessWidget {
  const CardLists({Key? key, required this.info}) : super(key: key);

  final CardList info;

  //build paramater info for must filled

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OutletDetail()));
      },
      child: Container(
        width: 379,
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: greyColored),
            borderRadius: BorderRadius.circular(8),
            color: whiteColor),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: Image.asset(
                info.imageUrl,
                width: 132,
                height: 126,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 13),
              width: 225,
              height: 100,
              decoration: BoxDecoration(color: tranparent),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgIcon(
                        icon: const SvgIconData("assets/icons/map.svg"),
                        size: 15,
                        color: greyColor,
                      ),
                      const SizedBox(
                        width: 6.85,
                      ),
                      Text(
                        info.address,
                        style: semiReguler10.copyWith(color: greyColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    info.writer,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16, height: 1.4),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: greenColored,
                            ),
                            child: Text(
                              "Carwash",
                              style: mediumText10.copyWith(color: greenColor),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: greenColored,
                            ),
                            child: Text(
                              "Spotwash",
                              style: mediumText10.copyWith(color: greenColor),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "4,5",
                            style: mediumText12.copyWith(color: black),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.star,
                            size: 16,
                            color: yellowColor,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
