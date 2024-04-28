import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../../themes.dart';
import '../../../home/pages/detail/sevices/booking_order/detail_order/detail_order.dart';

class Order extends StatefulWidget {
  static const nameRoute = "/order";
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, DetailOrder.nameRoute);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: greyColored)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hari Ini 17:24",
                        style: semiReguler14.copyWith(color: greyColor),
                      ),
                      Text(
                        "29:54",
                        style: semiBoldText16.copyWith(color: yellowColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/pespas.svg'),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cuci Mobil Reguler",
                            style: mediumText16.copyWith(color: black),
                          ),
                          Text(
                            "F123RPD",
                            style: mediumText14.copyWith(color: greyColor),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "ID : 7343764",
                            style: mediumText16.copyWith(color: black),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: redColor),
                        borderRadius: BorderRadius.circular(8),
                        color: redb),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Belum Konfirmasi",
                          style: mediumText16.copyWith(color: redColor),
                        ),
                        SvgIcon(
                          icon: const SvgIconData("assets/icons/arrow.svg"),
                          color: redColor,
                          size: 24,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
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
                        color: whiteColor,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Pesanan Saya",
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
