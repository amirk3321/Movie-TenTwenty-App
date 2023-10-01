class HallEntity {
  final String time;
  final String title;
  final String fromPrice;
  final String bonus;
  final String hallImage;

  HallEntity(
      {required this.time,
      required this.title,
      required this.fromPrice,
      required this.bonus,
      required this.hallImage});

  static List<HallEntity> hallList = [
    HallEntity(
      time: "12:30",
      title: "Cinetech + hall 1",
      fromPrice: "50\$",
      bonus: "2500 bonus",
      hallImage: "assets/lounge.png",
    ),
    HallEntity(
      time: "13:30",
      title: "Cinetech + hall 2",
      fromPrice: "75\$",
      bonus: "3000 bonus",
      hallImage: "assets/lounge.png",
    ),
  ];
}
