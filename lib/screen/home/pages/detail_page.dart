import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../models/themes.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String description;
  final String time;
  final String tag;

  DetailPage({
    required this.image,
    required this.description,
    required this.time,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    Widget detailKegiatan() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 20,
                    color: black,
                  ), // Ikon
                  const SizedBox(width: 8),
                  Text(
                    time,
                    style: semiBoldText14.copyWith(color: black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: mediumText16.copyWith(color: greyColor),
            ),
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
              height: 268,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30, left: 16),
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
                height: 500,
                padding: const EdgeInsets.symmetric(vertical: 17),
                margin: const EdgeInsets.only(top: 221),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    detailKegiatan(),
                  ],
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
