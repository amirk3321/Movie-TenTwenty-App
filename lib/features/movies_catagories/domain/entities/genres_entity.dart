class GenresEntity {
  final int? id;
  final String? title;
  final String? image;

  GenresEntity({required this.id, required this.title, required this.image});

  static List<GenresEntity> genresListData = [
    GenresEntity(
      title: "Comedy",
      id: 35,
      image: "assets/genres/comedies.png"
    ),
    GenresEntity(
        title: "Crime",
        id: 80,
        image: "assets/genres/crime.png"
    ),
    GenresEntity(
        title: "Family",
        id: 10751,
        image: "assets/genres/family.png"
    ),
    GenresEntity(
        title: "Documentaries",
        id: 99,
        image: "assets/genres/documentaries.png"
    ),
    GenresEntity(
        title: "Dramas",
        id: 18,
        image: "assets/genres/dramas.png"
    ),
    GenresEntity(
        title: "Fantasy",
        id: 14,
        image: "assets/genres/fantasy.png"
    ),
    GenresEntity(
        title: "Holiday",
        id: 36,
        image: "assets/genres/holidays.png"
    ),
    GenresEntity(
        title: "Horror",
        id: 27,
        image: "assets/genres/horror.png"
    ),
    GenresEntity(
        title: "Sci-Fi",
        id: 878,
        image: "assets/genres/scifi.png"
    ),
    GenresEntity(
        title: "Thriller",
        id: 53,
        image: "assets/genres/thriller.png"
    ),
  ];
}
