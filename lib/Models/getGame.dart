// To parse this JSON data, do
//
//     final getGame = getGameFromJson(jsonString);

import 'dart:convert';

GetGame getGameFromJson(String str) => GetGame.fromJson(json.decode(str));

String getGameToJson(GetGame data) => json.encode(data.toJson());

class GetGame {
  int? code;
  String? message;
  List<Datum>? data;

  GetGame({
    this.code,
    this.message,
    this.data,
  });

  factory GetGame.fromJson(Map<String, dynamic> json) => GetGame(
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
  String? gameNumber;
  String? gameName;
  String? barcode;
  int? startingTicketNumber;
  int? endingTicketNumber;
  String? ticketValue;
  int? ticketsPerPack;
  dynamic document;
  int? batchId;
  int? offlineId;
  int? terminalId;
  String? imageUrl;

  Datum({
    this.id,
    this.gameNumber,
    this.gameName,
    this.barcode,
    this.startingTicketNumber,
    this.endingTicketNumber,
    this.ticketValue,
    this.ticketsPerPack,
    this.document,
    this.batchId,
    this.offlineId,
    this.terminalId,
    this.imageUrl,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] ?? 0,
        gameNumber: json["game_number"] ?? "",
        gameName: json["game_name"] ?? '',
        barcode: json["barcode"] ?? "",
        startingTicketNumber: json["starting_ticket_number"],
        endingTicketNumber: json["ending_ticket_number"],
        ticketValue: json["ticket_value"],
        ticketsPerPack: json["tickets_per_pack"],
        document: json["document"],
        batchId: json["batch_id"],
        offlineId: json["offline_id"],
        terminalId: json["terminal_id"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "game_number": gameNumber,
        "game_name": gameName,
        "barcode": barcode,
        "starting_ticket_number": startingTicketNumber,
        "ending_ticket_number": endingTicketNumber,
        "ticket_value": ticketValue,
        "tickets_per_pack": ticketsPerPack,
        "document": document,
        "batch_id": batchId,
        "offline_id": offlineId,
        "terminal_id": terminalId,
        "image_url": imageUrl,
      };
}
