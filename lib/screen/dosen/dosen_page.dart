import 'package:flutter/material.dart';
import 'package:teknik_elektro/models/themes.dart';

import '../../models/dosen.dart';

class DosenPage extends StatelessWidget {
  const DosenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget listCard(DosenData dosenData) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: greyColored, width: 0.5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        dosenData.imageUrl,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: blueNight,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              dosenData.title,
                              style: mediumText12.copyWith(
                                color: blueDark,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(dosenData.name,
                              style: mediumText16.copyWith(color: black)),
                          const SizedBox(height: 8),
                          Text('NIK/NIDN :\n${dosenData.nik}',
                              style: mediumText13.copyWith(color: greyColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
                  "Dosen & Staff",
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
                  children: dosenDataList
                      .map((dosenData) => listCard(dosenData))
                      .toList()),
            )),
          ])
        ],
      ),
    );
  }
}
