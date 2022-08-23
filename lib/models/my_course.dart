class ListMyCourse {

  List<MyCourse> get myCourse => [..._myCourse];

  final _myCourse = [
    const MyCourse(
      photo: "assets/m_ic_ai.jpg",
      title: "Design Thinking Fundamental",
      author: "Diana Russel",
      label: "Label",
      lastProgress: 20,
      endProgress: 29,
      endDate: "November 2, 2021",
    ),
    const MyCourse(
      photo: "assets/m_ic_art.jpg",
      title: "Art Basic",
      author: "Ilyssa Lindenbluth",
      label: "Label",
      lastProgress: 7,
      endProgress: 32,
      endDate: "August 24, 2021",
    ),
    const MyCourse(
      photo: "assets/m_ic_programming.jpg",
      title: "Creating 10 Java Application in 10 Minutes",
      author: "Amby Beckmann",
      label: "Label",
      lastProgress: 28,
      endProgress: 40,
      endDate: "August 24, 2021",
    ),
  ];
}

class MyCourse {
  final String photo;
  final String title;
  final String author;
  final String label;
  final int lastProgress;
  final int endProgress;
  final String endDate;

  const MyCourse({
    required this.photo,
    required this.title,
    required this.author,
    required this.label,
    required this.lastProgress,
    required this.endProgress,
    required this.endDate,
  });
}
