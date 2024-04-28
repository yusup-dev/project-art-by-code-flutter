import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../../../themes.dart';

class History extends StatefulWidget {
  static const nameRoute = "/riwayat";
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Semua Order",
              style: semiReguler16.copyWith(color: greyColor),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: greyColored)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgIcon(
                            icon: const SvgIconData("assets/icons/outlet.svg"),
                            size: 16,
                            color: greenColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Carwash park paramount ",
                            style: mediumText14.copyWith(color: black),
                          ),
                        ],
                      ),
                      Text(
                        "Dibatalkan",
                        style: mediumText14.copyWith(color: redColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/mobil.svg'),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cuci Mobil Reguler",
                            style: semiBoldText16.copyWith(color: black),
                          ),
                          Text(
                            "NDGSJBDY",
                            style: semiReguler14.copyWith(color: greyColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: greyColored),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp 150.000",
                          style: semiBoldText16.copyWith(color: black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "22 Jan 2023, 4:18 PM",
                        style: mediumText12.copyWith(color: greyColor),
                      ),
                      Container(
                        width: 92,
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                            color: greyColored,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Nilai",
                            style: semiReguler16.copyWith(color: greyColor),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: greyColored)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgIcon(
                            icon: const SvgIconData("assets/icons/outlet.svg"),
                            size: 16,
                            color: greenColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Carwash park paramount ",
                            style: mediumText14.copyWith(color: black),
                          ),
                        ],
                      ),
                      Text(
                        "Sukses",
                        style: mediumText14.copyWith(color: greenColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/mobil.svg'),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cuci Mobil Reguler",
                            style: semiBoldText16.copyWith(color: black),
                          ),
                          Text(
                            "NDGSJBDY",
                            style: semiReguler14.copyWith(color: greyColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: greyColored),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp 150.000",
                          style: semiBoldText16.copyWith(color: black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "22 Jan 2023, 4:18 PM",
                        style: mediumText12.copyWith(color: greyColor),
                      ),
                      Container(
                        width: 92,
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Nilai",
                            style: semiReguler16.copyWith(color: whiteColor),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: greyColored)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgIcon(
                            icon: const SvgIconData("assets/icons/outlet.svg"),
                            size: 16,
                            color: greenColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Carwash park paramount ",
                            style: mediumText14.copyWith(color: black),
                          ),
                        ],
                      ),
                      Text(
                        "Dibatalkan",
                        style: mediumText14.copyWith(color: redColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/mobil.svg'),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cuci Mobil Reguler",
                            style: semiBoldText16.copyWith(color: black),
                          ),
                          Text(
                            "NDGSJBDY",
                            style: semiReguler14.copyWith(color: greyColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: greyColored),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp 150.000",
                          style: semiBoldText16.copyWith(color: black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "22 Jan 2023, 4:18 PM",
                        style: mediumText12.copyWith(color: greyColor),
                      ),
                      Container(
                        width: 92,
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                            color: greyColored,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Nilai",
                            style: semiReguler16.copyWith(color: greyColor),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: greyColored)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgIcon(
                            icon: const SvgIconData("assets/icons/outlet.svg"),
                            size: 16,
                            color: greenColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Carwash park paramount ",
                            style: mediumText14.copyWith(color: black),
                          ),
                        ],
                      ),
                      Text(
                        "Sukses",
                        style: mediumText14.copyWith(color: greenColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/mobil.svg'),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cuci Mobil Reguler",
                            style: semiBoldText16.copyWith(color: black),
                          ),
                          Text(
                            "NDGSJBDY",
                            style: semiReguler14.copyWith(color: greyColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1, color: greyColored),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp 150.000",
                          style: semiBoldText16.copyWith(color: black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "22 Jan 2023, 4:18 PM",
                        style: mediumText12.copyWith(color: greyColor),
                      ),
                      Container(
                        width: 92,
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "Nilai",
                            style: semiReguler16.copyWith(color: whiteColor),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
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
                        size: 24,
                      ),
                    ),
                    Text(
                      "Kendaraan",
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
                children: [body()],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
