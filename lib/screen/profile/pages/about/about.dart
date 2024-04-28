import 'package:flutter/material.dart';
import '../../../../../../../../../../../themes.dart';

class About extends StatelessWidget {
  static const nameRoute = "/term";
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat datang di Aplikasi\nSato Carwash Appps!\n\nLorem ipsum dolor sit amet consectetur. Mauris in interdum dignissim et eget ut. Quam commodo netus faucibus id. A sagittis fermentum phasellus urna mattis tellus faucibus. Lorem enim gravida lorem gravida enim a. Ac id facilisis sapien facilisi lacus tincidunt in. Ut vestibulum lectus in a ornare. Mauris aliquam sagittis potenti amet id etiam tellus felis. Tellus imperdiet interdum suspendisse mauris. Mi ultricies pharetra euismod tempor aliquam sed eget aliquam. Quisque facilisi egestas at ut tristique velit. Sapien enim duis diam aenean elit in ullamcorper pretium pulvinar. Id tristique vel sed consequat felis.\n\nIpsum nam malesuada habitasse amet urna. Neque magna eu egestas facilisis dignissim tempor gravida nascetur tincidunt. Nulla purus suspendisse quis risus mauris augue. Enim scelerisque mi enim sit purus risus volutpat. Sit hac suspendisse imperdiet facilisis et enim varius proin et. Vivamus dui eget non sem lacus tempor amet. Enim adipiscing ut et turpis pellentesque blandit purus facilisis. Mauris viverra est est bibendum pellentesque congue. Tincidunt sit cursus massa elit. Odio at nulla pellentesque nunc urna platea. Duis fermentum vestibulum dictumst facilisis mollis adipiscing habitant euismod dignissim. Eget semper felis accumsan sed.',
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
                      "About",
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
