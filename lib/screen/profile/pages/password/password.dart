import 'package:flutter/material.dart';
import '../../../../../../../../../../themes.dart';

class Password extends StatefulWidget {
  static const nameRoute = "/password";
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password Anda harus lebih dari enam karakter Yang berisi kombinasi angka, huruf, dan karakter Khusus(!@%).",
              style: semiReguler16.copyWith(color: greyColor),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Password Saat Ini",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: greyColor),
              decoration: InputDecoration(
                hintText: "Masukan password",
                hintStyle: TextStyle(color: greyColor),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  size: 20,
                  color: greyColor,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: greyColor,
                  size: 20,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: greyColor),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Password Saat Ini",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: greyColor),
              decoration: InputDecoration(
                hintText: "Masukan password",
                hintStyle: TextStyle(color: greyColor),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  size: 20,
                  color: greyColor,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: greyColor,
                  size: 20,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: greyColor),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Password Saat Ini",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: greyColor),
              decoration: InputDecoration(
                hintText: "Masukan password",
                hintStyle: TextStyle(color: greyColor),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  size: 20,
                  color: greyColor,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: greyColor,
                  size: 20,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: greyColor),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
              ),
            ),
            const SizedBox(
              height: 220,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: greenColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Ganti Password",
                  style: semiBoldText16.copyWith(color: whiteColor),
                ),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Center(
              child: Text(
                "Versi aplikasi 2.3.4",
                style: semiReguler14.copyWith(color: greyColor),
              ),
            )
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
                      "Password",
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
                children: [
                  body(),
                ],
              ),
            )),
          ])
        ],
      ),
    );
  }
}
