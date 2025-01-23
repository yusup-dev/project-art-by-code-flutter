import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teknik_elektro/screen/home/pages/detail_page.dart';
import '../../models/activity.dart';
import '../../models/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = "/homePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Container(
            height: 180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/header.png"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 49, left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Teknik Elektro',
                            style: mediumText21.copyWith(color: whiteColor),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0), // Atur margin atas
                            child: Text(
                              'Universitas Ibnu Khaldun Bogor',
                              style: semiBoldText14.copyWith(color: whiteColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              child: Container(
            margin: const EdgeInsets.only(top: 150, left: 16, right: 16),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: greyColored,
                  offset: const Offset(
                    0.5,
                    0.5,
                  ),
                  blurRadius: 1.0,
                )
              ],
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 13,
                bottom: 13,
                left: 16,
                right: 41.5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/star2.png",
                        width: 30,
                        height: 30,
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(color: whiteColor),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Akreditasi",
                                  style:
                                      mediumText10.copyWith(color: greyColor)),
                              Text(
                                "Baik Sekali",
                                style: semiBoldText16.copyWith(color: blueDark),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: greyColored,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/avatar.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mahasiswa TE",
                                    style: mediumText10.copyWith(
                                        color: greyColor)),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "298",
                                      style:
                                          semiBoldText16.copyWith(color: black),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 4),
                                      decoration: BoxDecoration(
                                          color: blueDark,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 2),
                                        child: Text(
                                          "Aktif",
                                          style: semiReguler8.copyWith(
                                              color: whiteColor),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      );
    }

    Widget kegitan() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kegiatan",
                  style: boldText16.copyWith(color: black),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: imageMap.entries.map((entry) {
                String key = entry.key;
                String image = entry.value;
                String description =
                    descriptionMap[key] ?? "Deskripsi tidak tersedia";
                String time = timeMap[key] ?? "Time tidak ada";

                return GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman kedua dengan animasi
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                              image: image,
                              description: description,
                              time: time,
                              tag: 'hero-tag-$key'),
                        ),
                      );
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          children: [
                            Hero(
                                tag: 'hero-tag-$key',
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.asset(
                                    image,
                                    width: 327,
                                    height: 139,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        )));
              }).toList(),
            ),
          ),
        ],
      );
    }

    Widget tentang() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tentang dan Sejarah",
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 10),
            Text(
              "Universitas Ibn Khaldun Bogor (UIKA) berdiri pada 1961 setelah pengelolaan fakultas di Jakarta dan Bogor dialihkan ke Yayasan Ibn Khaldun Bogor. Fakultas Teknik UIKA, berdiri sejak 1974, berganti nama menjadi Fakultas Teknik dan Sains (FTS-UIKA) pada 2018. FTS-UIKA memiliki 7 program studi, termasuk Teknik Elektro, yang mempelajari listrik, energi, dan teknologi elektronik, serta bermitra dengan FPTTE untuk pembaruan ilmu pengetahuan.",
              style: mediumText15.copyWith(color: greyColor),
            ),
          ],
        ),
      );
    }

    Future<void> _launchURL(String url) async {
      final Uri uri = Uri.parse(url);
      try {
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          throw 'Could not launch $url';
        }
      } catch (e) {
        print('Error launching URL: $e');
      }
    }

    Widget kontak() {
      return Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              "Kontak Kami",
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.grey, size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Text("0812-9057-9964",
                      style: mediumText14.copyWith(color: greyColor)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "ft@uika-bogor.ac.id",
                    style: mediumText14.copyWith(color: greyColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                      "Jl. Sholeh Iskandar, Kedungbadak,Tanah Sereal, Kota Bogor, Jawa Barat",
                      style: mediumText14.copyWith(color: greyColor)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Ikuti Kami di Media Sosial:",
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    _launchURL("https://www.facebook.com/psteuika");
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/facebook.svg",
                    color: Colors.blue,
                    width: 30,
                    height: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _launchURL("https://www.instagram.com/elektrouika/");
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/instagram.svg",
                    color: Colors.pink,
                    width: 30,
                    height: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _launchURL(
                        "https://www.youtube.com/@teknikelektrouikabogor33");
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/youtube.svg",
                    color: Colors.red,
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                tentang(),
                kegitan(),
                kontak(),
              ],
            )
          ],
        )
      ],
    ));
  }
}
