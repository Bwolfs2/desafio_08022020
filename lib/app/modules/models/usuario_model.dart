import 'dart:convert';

class UsuarioModel {
  final String guid;
  final String picture;
  final int age;
  final int points;
  final String name;
  final String email;
  final String lastPointDate;

  UsuarioModel({
    this.guid,
    this.picture,
    this.age,
    this.points,
    this.name,
    this.email,
    this.lastPointDate,
  });

  UsuarioModel copyWith({
    String guid,
    String picture,
    int age,
    int points,
    String name,
    String email,
    String lastPointDate,
  }) =>
      UsuarioModel(
        guid: guid ?? this.guid,
        picture: picture ?? this.picture,
        age: age ?? this.age,
        points: points ?? this.points,
        name: name ?? this.name,
        email: email ?? this.email,
        lastPointDate: lastPointDate ?? this.lastPointDate,
      );

  factory UsuarioModel.fromJson(String str) =>
      UsuarioModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  static List<UsuarioModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map<UsuarioModel>((item) => UsuarioModel.fromMap(item))
        .toList();
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> json) => UsuarioModel(
        guid: json["guid"],
        picture: json["picture"],
        age: json["age"],
        points: json["points"],
        name: json["name"],
        email: json["email"],
        lastPointDate: json["last_point_date"],
      );

  Map<String, dynamic> toMap() => {
        "guid": guid,
        "picture": picture,
        "age": age,
        "points": points,
        "name": name,
        "email": email,
        "last_point_date": lastPointDate,
      };
}
