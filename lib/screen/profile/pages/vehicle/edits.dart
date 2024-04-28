import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../../../../../themes.dart';

class Edits extends StatefulWidget {
  static const nameRoute = "/edits";
  const Edits({super.key});

  @override
  State<Edits> createState() => _EditsState();
}

class _EditsState extends State<Edits> {
  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Data Kendaraan",
              style: semiReguler16.copyWith(color: greyColor),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              "Nomor Polisi",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 118.33,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: greyColored)),
                  child: Center(
                    child: Text(
                      "F",
                      style: mediumText16.copyWith(color: greyColor),
                    ),
                  ),
                ),
                Container(
                  width: 118.33,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: greyColored)),
                  child: Center(
                    child: Text(
                      "1",
                      style: mediumText16.copyWith(color: greyColor),
                    ),
                  ),
                ),
                Container(
                  width: 118.33,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: greyColored)),
                  child: Center(
                    child: Text(
                      "BPD",
                      style: mediumText16.copyWith(color: greyColor),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Jenis Kendaraan",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  width: 125,
                  height: 98,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: greyColored)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColored),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/pespas.svg",
                            ),
                            Text(
                              "Mobil",
                              style: mediumText16.copyWith(color: black),
                            )
                          ],
                        )
                      ]),
                ),
                const SizedBox(
                  width: 24,
                ),
                Container(
                  width: 125,
                  height: 98,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: greyColored)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: greyColored),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/mobilo.svg",
                            ),
                            Text(
                              "Motor",
                              style: mediumText16.copyWith(color: black),
                            )
                          ],
                        )
                      ]),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Nama Kendaraan",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              style: TextStyle(fontSize: 16, color: black),
              decoration: InputDecoration(
                hintText: "Cth. Brio Satiya A/T 2019",
                hintStyle: TextStyle(color: black),
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
              "Informastion Tambahan",
              style: mediumText16.copyWith(color: black),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              maxLines: null,
              minLines: 2,
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                  fontSize: 16, color: greyColor, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                hintText: 'Masukan informasi tambahan',
                hintStyle: TextStyle(color: black),
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
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 63.5, vertical: 10),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(width: 1, color: greenColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Cancel",
                    style: semiBoldText16.copyWith(color: greenColor),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 63.5, vertical: 10),
                  decoration: BoxDecoration(
                      color: greenColor,
                      border: Border.all(width: 1, color: greenColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Simpan",
                    style: semiBoldText16.copyWith(color: whiteColor),
                  ),
                ),
              ],
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
                      "Edit Kendaraan",
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
