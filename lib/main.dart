// ignore_for_file: equal_keys_in_map

import 'package:aplikasi_sato/screen/bottom_navbar.dart';
import 'package:aplikasi_sato/screen/profile/pages/vehicle/add.dart';
import 'package:aplikasi_sato/screen/profile/pages/vehicle/edits.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carwash',
      debugShowCheckedModeBanner: false,
      routes: {
        BottomNavBar.nameRoute: (context) => const BottomNavBar(),
        Add.nameRoute: (context) => const Add(),
        Edits.nameRoute: (context) => const Edits(),
      },
    );
  }
}
