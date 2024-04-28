import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../themes.dart';
import 'detail_order/detail_order.dart';

class BookingOrder extends StatefulWidget {
  static const nameRoute = "/booking";
  const BookingOrder({super.key});

  @override
  State<BookingOrder> createState() => _BookingOrderState();
}

class _BookingOrderState extends State<BookingOrder> {
  @override
  Widget build(BuildContext context) {
    Widget bodyOrder() {
      return Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lokasi Outlet",
                      style: semiReguler14.copyWith(color: greyColor),
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
                    TextField(
                      maxLines: null,
                      minLines: 2,
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(
                          fontSize: 16,
                          color: greyColor,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        hintText: 'Masukan informasi tambahan',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 16),
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
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: greyColored),
                      ),
                      child: Row(
                        children: [
                          SvgIcon(
                            icon: const SvgIconData('assets/icons/promo.svg'),
                            color: greenColor,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Makin hemat pakai promo",
                            style: mediumText16.copyWith(color: black),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 45,
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
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailOrder(),
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Order",
                              style: semiBoldText16.copyWith(color: whiteColor),
                            ),
                          ],
                        ),
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
                      "Booking Order",
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
