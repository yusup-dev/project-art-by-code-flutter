import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../../themes.dart';

class DetailPromo extends StatelessWidget {
  static const nameRoute = "/detailpromo";
  const DetailPromo({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(image: AssetImage("assets/images/banner4.png")),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Promo baru cuci mobil dengan diskon hingga 90%",
              style: semiBoldText16.copyWith(color: greenColor),
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgIcon(
                      icon: const SvgIconData("assets/icons/clock.svg"),
                      size: 18,
                      color: greenColor,
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Text(
                      "Berlaku Hingga",
                      style: mediumText12.copyWith(color: greyColor),
                    )
                  ],
                ),
                Text(
                  "Berlaku Hingga",
                  style: mediumText12.copyWith(color: black),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            Text(
              "Tentang Promo",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Lorem ipsum dolor sit amet consectetur. Velit semper orci sed arcu pellentesque.",
              style: semiReguler14.copyWith(color: blacks),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Syarat Dan Ketentuan",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "1. Gunakan Aplikasi sato robotic custemer\n2. Pilih redeem voucher di promo yang tersedia\n3. Berlaku selama preode promo\n4. 1 promo berlaku untuk 1 kali transaksi selama priode promo\n5. Tidak dapat digabung dengan promo lainnya.",
              style: semiReguler14.copyWith(color: blacks),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Cara Pakai",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "1. Cek halaman promo untuk melihat promo lainnya \n2. Gunakan voucher pada saat Booking. \n3. Dapatkan notifikasi Promo jika sudah berhasil di pakai",
              style: semiReguler14.copyWith(color: blacks),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: greenColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Gunakan Voucer",
                  style: semiBoldText16.copyWith(color: whiteColor),
                ),
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
                      "Detail Promo                                                                                                                                                                                                                                                                                                                            ",
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
