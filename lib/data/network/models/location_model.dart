// To parse this JSON data, do
//
//     final locationModel = locationModelFromJson(jsonString);

import 'dart:convert';

LocationModel locationModelFromJson(String str) =>
    LocationModel.fromJson(json.decode(str));

String locationModelToJson(LocationModel data) => json.encode(data.toJson());

class LocationModel {
  LocationModel({
    this.succeeded,
    this.message,
    this.error,
    this.data,
  });

  final bool succeeded;
  final dynamic message;
  final dynamic error;
  final LocationData data;

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: LocationData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": data.toJson(),
      };
}

class LocationData {
  LocationData({
    this.id,
    this.name,
    this.type,
    this.measurements,
    this.about,
    this.imageName,
    this.characters,
    this.placeOfBirthCharacters,
  });

  final String id;
  final String name;
  final String type;
  final String measurements;
  final String about;
  final String imageName;
  final List<Character> characters;
  final List<dynamic> placeOfBirthCharacters;

  factory LocationData.fromJson(Map<String, dynamic> json) => LocationData(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        measurements: json["measurements"],
        about: json["about"],
        imageName: json["imageName"],
        characters: List<Character>.from(
            json["characters"].map((x) => Character.fromJson(x))),
        placeOfBirthCharacters:
            List<dynamic>.from(json["placeOfBirthCharacters"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "measurements": measurements,
        "about": about,
        "imageName": imageName,
        "characters": List<dynamic>.from(characters.map((x) => x.toJson())),
        "placeOfBirthCharacters":
            List<dynamic>.from(placeOfBirthCharacters.map((x) => x)),
      };
}

class Character {
  Character({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.status,
    this.about,
    this.gender,
    this.race,
    this.imageName,
    this.locationId,
    this.placeOfBirthId,
    this.placeOfBirth,
    this.episodes,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final int status;
  final String about;
  final int gender;
  final String race;
  final String imageName;
  final String locationId;
  final String placeOfBirthId;
  final dynamic placeOfBirth;
  final dynamic episodes;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        fullName: json["fullName"],
        status: json["status"],
        about: json["about"],
        gender: json["gender"],
        race: json["race"],
        imageName: json["imageName"],
        locationId: json["locationId"],
        placeOfBirthId:
            json["placeOfBirthId"] == null ? null : json["placeOfBirthId"],
        placeOfBirth: json["placeOfBirth"],
        episodes: json["episodes"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName == null ? null : lastName,
        "fullName": fullName,
        "status": status,
        "about": about,
        "gender": gender,
        "race": race,
        "imageName": imageName,
        "locationId": locationId,
        "placeOfBirthId": placeOfBirthId == null ? null : placeOfBirthId,
        "placeOfBirth": placeOfBirth,
        "episodes": episodes,
      };
}
