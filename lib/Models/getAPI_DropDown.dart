// To parse this JSON data, do
//
//     final getDropDown = getDropDownFromJson(jsonString);

import 'dart:convert';

GetDropDown getDropDownFromJson(String str) =>
    GetDropDown.fromJson(json.decode(str));

String getDropDownToJson(GetDropDown data) => json.encode(data.toJson());

class GetDropDown {
  int? code;
  String? message;
  List<Datum>? data;

  GetDropDown({
    this.code,
    this.message,
    this.data,
  });

  factory GetDropDown.fromJson(Map<String, dynamic> json) => GetDropDown(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  int? id;
  String? name;

  Datum({
    this.id,
    this.name,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
