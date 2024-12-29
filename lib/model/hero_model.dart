// ignore_for_file: public_member_api_docs, sort_constructors_first
class HeroModel {
  String imaePath;

  HeroModel({
    required this.imaePath,
  });
}

class HeroAnimationInfo {
  List<HeroModel> items = [
    HeroModel(imaePath: "assets/youtube.png"),
    HeroModel(imaePath: "assets/geto.jpg"),
    HeroModel(imaePath: "assets/youtube.png"),
    HeroModel(imaePath: "assets/geto.jpg"),
    HeroModel(imaePath: "assets/youtube.png"),
    HeroModel(imaePath: "assets/geto.jpg"),
  ];
}
