//declaration class have constructor with 3 property

class ListCardPromo {
  String imageAssets;
  String period;
  String date;

  ListCardPromo(
      {required this.imageAssets, required this.period, required this.date});
}

//inisialisation from class listCards

List<ListCardPromo> listCardPromo = [
  ListCardPromo(
      imageAssets: "assets/images/bannerpromo.png",
      period: "Berlaku Hingga",
      date: "31 Jan 2023"),
  ListCardPromo(
      imageAssets: "assets/images/bannerpromo.png",
      period: "Berlaku Hingga",
      date: "31 Jan 2023"),
  ListCardPromo(
      imageAssets: "assets/images/bannerpromo.png",
      period: "Berlaku Hingga",
      date: "31 Jan 2023"),
];
