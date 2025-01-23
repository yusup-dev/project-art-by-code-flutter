import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teknik_elektro/screen/bottom_navbar.dart';

import '../../models/themes.dart';

class SplashScreen extends StatefulWidget {
  static const nameRoute = "/splashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(BottomNavBar.nameRoute);
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose(); // Call super.dispose()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            Text(
              "Kelompok 3",
              style: semiBoldText14.copyWith(color: blueDark),
            ),
            const SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: mediumText12.copyWith(
                  color: blueDark,
                  height: 1.5,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Azzahra Citra Insania - 221106043007\n',
                  ),
                  TextSpan(
                    text: 'Muhammad Kemal Abidin - 221106042911\n',
                  ),
                  TextSpan(
                    text: 'M Wildan Nurohman - 221106043031\n',
                  ),
                  TextSpan(
                    text: 'Muhamad Yusup - 221106041049',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
