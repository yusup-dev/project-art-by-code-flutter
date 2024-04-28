class ListCards {
  String imageUrl;
  String title;
  String writer;

  ListCards(
      {required this.imageUrl, required this.title, required this.writer});
}

List<ListCards> listCards = [
  ListCards(
      imageUrl: "assets/images/img7.png",
      title: "Cuci Reguler + Fogging",
      writer: "Rp150.000"),
  ListCards(
      imageUrl: "assets/images/img8.png",
      title: "Cuci Reguler + Fogging",
      writer: "Rp150.000"),
  ListCards(
      imageUrl: "assets/images/img9.png",
      title: "Cuci Reguler + Fogging",
      writer: "Rp150.000"),
  ListCards(
      imageUrl: "assets/images/img10.png",
      title: "Cuci Reguler + Fogging",
      writer: "Rp150.000"),
];
