import 'package:flutter/material.dart';
import '../../../../../../../../../../../themes.dart';

class Term extends StatelessWidget {
  static const nameRoute = "/term";
  const Term({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Dtang diaplikasi Gojek!\n\nKetentuan Umum\nBACALAH SELURUH KETENTUAN PENGGUNAAN INI SEBELUM MENGAKSES ATAU MENGGUNAKAN APLIKASI Gojek.\n\nKetentuan Penggunaan ini adalah perjanjian antara pengguna (“Anda”) dan PT Aplikasi Karya Anak Bangsa (“Kami”), sebuah perseroan terbatas yang didirikan dan beroperasi secara sah berdasarkan hukum negara Republik Indonesia dan berdomisili di DKI Jakarta, Indonesia. Ketentuan Penggunaan ini mengatur akses dan penggunaan Anda atas aplikasi, situs web (www.gojek.com dan situs web lain yang Kami kelola), konten dan produk yang disediakan oleh Kami (selanjutnya, secara bersama-sama disebut sebagai “Aplikasi”), serta pemesanan, pembayaran atau penggunaan layanan yang tersedia pada Aplikasi (“Layanan”).\n\nDengan menyetujui Ketentuan Penggunaan ini, Anda juga menyetujui Ketentuan Penggunaan tambahan, termasuk Ketentuan Penggunaan pada setiap Layanan, dan perubahannya yang merupakan bagian yang tidak terpisahkan dari Ketentuan Penggunaan ini (selanjutnya, Ketentuan Penggunaan, Ketentuan Penggunaan tambahan, dan perubahannya secara bersama-sama disebut sebagai “Ketentuan Penggunaan”). Meskipun merupakan satu kesatuan, Ketentuan Penggunaan tambahan akan berlaku dalam hal terdapat perbedaan dengan Ketentuan Penggunaan.',
              style: semiReguler16.copyWith(color: black),
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
                      "Terms and Conditions",
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
