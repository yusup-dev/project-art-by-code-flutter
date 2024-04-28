import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import '../../../../../../../../../../themes.dart';

class Edit extends StatefulWidget {
  static const nameRoute = "/edit";
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/avatars.png",
                  height: 110,
                  width: 110,
                ),
                Positioned(
                    child: Container(
                  margin: const EdgeInsets.only(top: 80, left: 80),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: SvgIcon(
                    icon: const SvgIconData("assets/icons/camera.svg"),
                    color: whiteColor,
                  ),
                ))
              ],
            )
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama lengkap",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                prefixIcon: Icon(
                  Icons.person,
                  size: 20,
                  color: greyColor,
                ),
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
            Text(
              "No. Handphone",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
            Text(
              "Email",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 20,
                  color: greyColor,
                ),
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
            Text(
              "Tanggal Lahir",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                prefixIcon: Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: greyColor,
                ),
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
            Text(
              "Alamat",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              maxLines: null,
              minLines: 3,
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                  fontSize: 16, color: black, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greenColored),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: greyColored),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(
              height: 52,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: greenColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Simpan",
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
                        size: 24,
                        color: whiteColor,
                      ),
                    ),
                    Text(
                      "Edit Profile",
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
                  header(),
                  const SizedBox(
                    height: 32,
                  ),
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
