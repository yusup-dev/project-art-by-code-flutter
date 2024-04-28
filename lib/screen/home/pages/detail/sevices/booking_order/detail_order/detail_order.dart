import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../themes.dart';

class DetailOrder extends StatefulWidget {
  static const nameRoute = "/detailorder";
  const DetailOrder({super.key});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  @override
  Widget build(BuildContext context) {
    Widget bodyOrder() {
      return Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order ID : DJFHJSD",
                          style: semiBoldText16.copyWith(color: black),
                        ),
                        Text(
                          "29 : 59",
                          style: semiBoldText16.copyWith(color: yellow),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                          color: yellowColored,
                          border: Border.all(width: 1, color: yellows),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Silahkan Konfirmasi datang ke Outlet",
                        style: semiReguler14.copyWith(color: yellowh),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Lokasi Outlet",
                      style: mediumText14.copyWith(color: greyColor),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Carwash park paramount gading serpong.",
                      style: semiBoldText16.copyWith(color: greenColor),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Layanan",
                      style: semiReguler14.copyWith(color: greyColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: greyColored),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/img11.png"),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cuci Mobil dan Fogging",
                                style: mediumText16.copyWith(color: black),
                              ),
                              Text(
                                "Cuci Mobil dan Fogging",
                                style: mediumText12.copyWith(color: greyColor),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Rp. 150.000",
                                style:
                                    semiBoldText18.copyWith(color: greenColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Informasi Kendaraan",
                      style: semiReguler14.copyWith(color: greyColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nomor Polisi",
                          style: mediumText16.copyWith(color: black),
                        ),
                        Text(
                          "83GG",
                          style: mediumText16.copyWith(color: black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jenis Kendaraan",
                          style: mediumText16.copyWith(color: black),
                        ),
                        Text(
                          "Mobil",
                          style: mediumText16.copyWith(color: black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: greyColored, width: 1))),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Informasi Tambahan",
                      style: mediumText14.copyWith(color: greyColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Enim dui adipiscing et magna risus mauris quam odio. Amet",
                      style: semiReguler16.copyWith(color: black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Status Order",
                      style: semiReguler14.copyWith(color: greyColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                          color: redb,
                          border: Border.all(width: 1, color: redColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Belum Konfirmasi",
                        style: semiReguler14.copyWith(color: redColor),
                      ),
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: greyColored, width: 1))),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: mediumText16.copyWith(color: black),
                        ),
                        Text(
                          '150.000',
                          style: semiBoldText16.copyWith(color: greenColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: greenColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgIcon(
                            icon: const SvgIconData("assets/icons/scan.svg"),
                            color: greenColor,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Konfirmasi",
                            style: semiBoldText16.copyWith(color: greenColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 53,
              )
            ],
          ),
        ],
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
                      "Detail Order",
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
              margin: const EdgeInsets.only(top: 84),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [bodyOrder()],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
