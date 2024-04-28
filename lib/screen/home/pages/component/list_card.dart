import 'package:aplikasi_sato/screen/home/pages/detail/sevices/services.dart';
import 'package:flutter/material.dart';
import '../../../../../../../themes.dart';
import 'data_list.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key, required this.info}) : super(key: key);

  final ListCards info;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Services()));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: greyColored),
            borderRadius: BorderRadius.circular(8),
            color: whiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              info.imageUrl,
              width: 182,
              height: 132,
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 8, left: 8, bottom: 12, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.title,
                    style: semiReguler14.copyWith(color: greyColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(info.writer,
                      style: semiBoldText18.copyWith(color: black)),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: greenColored,
                    ),
                    child: Text(
                      "Carwash",
                      style: mediumText10.copyWith(color: greenColor),
                    ),
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
