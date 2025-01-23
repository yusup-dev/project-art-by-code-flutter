import 'package:flutter/material.dart';
import '../../models/themes.dart';

class ProfilePage extends StatefulWidget {
  static const nameRoute = "/user";
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Widget konten() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                    "assets/images/logo.jpg"), // Ganti dengan logo Prodi
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                "Teknik Elektro", // Ganti dengan nama prodi yang sesuai
                style: semiBoldText20.copyWith(color: black),
              ),
            ),
            const SizedBox(height: 16),
            // Deskripsi Prodi
            Text(
              "Teknik Elektro adalah bidang studi yang mempelajari dan menerapkan prinsip-prinsip ilmu kelistrikan, elektronik, dan elektromagnetisme untuk mendesain, menganalisis, serta mengembangkan sistem dan perangkat elektronik.",
              style: mediumText15.copyWith(color: greyColor),
            ),
            const SizedBox(height: 16),
            Text(
              "Visi",
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 8),
            Text(
                'Menjadi Program Studi yang Unggul dan Islami dalam Inovasi Teknologi Terapan Bidang Keteknikelektroan Tahun 2025',
                style: mediumText15.copyWith(color: greyColor)),
            const SizedBox(height: 8),
            Text(
              'Misi',
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: mediumText15.copyWith(color: greyColor),
                children: const <TextSpan>[
                  TextSpan(
                    text:
                        '1. Menyelenggarakan program pendidikan berkualitas dengan mempraktikan kebiasaan berfikir ilmiah, bertindak ilmiah, dan berakhlakul karimah,\n',
                  ),
                  TextSpan(
                    text:
                        '2. Mengembangkan ilmu pengetahuan, teknologi dan seni keteknikelektroan untuk meningkatkan pelayanan pendidikan dan penelitian,\n',
                  ),
                  TextSpan(
                    text:
                        '3. Menguji, mengembangkan, menerapkan dan menyebarluaskan ilmu pengetahuan, teknologi dan seni keteknikelektroan dalam lingkup pemberdayaan masyarakat,\n',
                  ),
                  TextSpan(
                    text:
                        '4. Melaksanakan kerjasama kemitraan nasional dan internasional di bidang keteknikelektroan.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Fasilitas',
              style: boldText16.copyWith(color: black),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/fasilitas1.jpg',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Ruang Dosen',
                                  style:
                                      mediumText12.copyWith(color: greyColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Jarak antar card
                      Expanded(
                        flex: 1,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/fasilitas2.jpg',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Instrumentasi dan Otomasi',
                                  style:
                                      mediumText12.copyWith(color: greyColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/fasilitas3.jpg',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Sistem Tenaga Listrik',
                                  style:
                                      mediumText12.copyWith(color: greyColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Jarak antar card
                      Expanded(
                        flex: 1,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/fasilitas4.jpg',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Ilmu dasar dan Teknik Elektro',
                                  style:
                                      mediumText12.copyWith(color: greyColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width *
                            0.45, // Lebar card 45% dari layar
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/fasilitas5.jpg',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Laboratorium Fisika Dasar',
                                  style:
                                      mediumText12.copyWith(color: greyColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
                    "Profil Prodi",
                    style: semiBoldText16.copyWith(color: whiteColor),
                  ),
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
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [konten()],
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
