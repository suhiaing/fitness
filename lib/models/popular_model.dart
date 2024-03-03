class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;

  PopularDietsModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calorie});

  static List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel> popularDiets = [];

    popularDiets.add(PopularDietsModel(
      name: 'Blueberry Pancake',
      iconPath: 'images/blueberry-pancake.svg',
      level: 'Medium',
      duration: '30mins',
      calorie: '230kCal',
    ));

    popularDiets.add(PopularDietsModel(
      name: 'Salmon Nigiri',
      iconPath: 'images/salmon-nigiri.svg',
      level: 'Easy',
      duration: '20mins',
      calorie: '120kCal',
    ));

    return popularDiets;
  }
}
