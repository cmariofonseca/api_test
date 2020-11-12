import 'dart:convert';

Cartoon cartoonFromJson(String str) => Cartoon.fromJson(json.decode(str));

String cartoonToJson(Cartoon data) => json.encode(data.toJson());

class Cartoon {
  Cartoon({
    this.created,
    this.episode,
    this.gender,
    this.id,
    this.image,
    this.location,
    this.name,
    this.origin,
    this.species,
    this.status,
    this.type,
    this.url,
  });

  DateTime created;
  List<String> episode;
  String gender;
  int id;
  String image;
  Location location;
  String name;
  Location origin;
  String species;
  String status;
  String type;
  String url;

  factory Cartoon.fromJson(Map<String, dynamic> json) => Cartoon(
        created: DateTime.parse(json["created"]),
        episode: List<String>.from(json["episode"].map((x) => x)),
        gender: json["gender"],
        id: json["id"],
        image: json["image"],
        location: Location.fromJson(json["location"]),
        name: json["name"],
        origin: Location.fromJson(json["origin"]),
        species: json["species"],
        status: json["status"],
        type: json["type"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "species": species,
        "type": type,
        "gender": gender,
        "origin": origin.toJson(),
        "location": location.toJson(),
        "image": image,
        "episode": List<dynamic>.from(episode.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
      };
}

class Location {
  Location({
    this.name,
    this.url,
  });

  String name;
  String url;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
