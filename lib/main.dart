import 'package:flutter/material.dart';
import 'package:teknik_elektro/screen/bottom_navbar.dart';

import 'screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teknik Elektro',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.nameRoute,
      routes: {
        SplashScreen.nameRoute: (context) => const SplashScreen(),
        BottomNavBar.nameRoute: (context) => const BottomNavBar(),
      },
    );
  }
}
