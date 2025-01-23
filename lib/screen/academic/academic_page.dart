import 'package:flutter/material.dart';
import '../../models/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class AcademicPage extends StatefulWidget {
  static const nameRoute = "/academic";

  const AcademicPage({super.key});
  @override
  State<AcademicPage> createState() => _AcademicPageState();
}

class _AcademicPageState extends State<AcademicPage> {
  @override
  Widget build(BuildContext context) {
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

    Widget kurikulum() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kurikulum",
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: greyColored, width: 0.5),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Teknik Elektro - KURIKULUM 2021',
                      style: mediumText15.copyWith(color: black),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _launchURL(
                            "https://drive.google.com/file/d/1R7NPO05BJNATr-iYgWvEg3aa4hBbJz6H/view?usp=sharing");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: whiteColor,
                        foregroundColor: blueDark,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: blueDark,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Text(
                        'Lihat Detail ->',
                        style: mediumText13.copyWith(color: blueDark),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget jadwalKuliah() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jadwal Perkuliahan",
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 1,
              child: Container(
                width: double.infinity, // Membuat lebar card penuh
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: greyColored, width: 0.5),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Teknik Elektro - 2024/2025 (GANJIL)',
                      style: mediumText15.copyWith(color: black),
                    ),
                    SizedBox(height: 10), // Jarak antar elemen
                    ElevatedButton(
                      onPressed: () {
                        _launchURL(
                            "https://drive.google.com/file/d/1yAV-m9eBPS7oSOOD-cOIJyMdI7sSxSq7/view?usp=sharing");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: whiteColor,
                        foregroundColor: blueDark,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: blueDark,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Text(
                        'Lihat Detail ->',
                        style: mediumText13.copyWith(color: blueDark),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget jadwalUjian() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jadwal UTS/UAS",
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: greyColored, width: 0.5),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UAS - Teknik Elektro - 2023/2024 (GANJIL)',
                      style: mediumText15.copyWith(color: black),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _launchURL(
                            "https://drive.google.com/file/d/15U3daH6vCaz-tnk7jQA6jR19c2XR9bb0/view?usp=sharing");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: whiteColor,
                        foregroundColor: blueDark,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: blueDark,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Text(
                        'Lihat Detail ->',
                        style: mediumText13.copyWith(color: blueDark),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Akademik",
                    style: semiBoldText16.copyWith(color: whiteColor),
                  ),
                ]),
              ),
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 600,
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  margin: const EdgeInsets.only(top: 84),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [kurikulum(), jadwalKuliah(), jadwalUjian()],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
