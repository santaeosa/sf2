class PokemonModel {
  String name;
  String img;
  List<String> type;
  String num;
  String height;

  PokemonModel({
    required this.name,
    required this.img,
    required this.type,
    required this.num,
    required this.height,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((e) => e)),
        num: json["num"],
        height: json["height"],
      );
}
