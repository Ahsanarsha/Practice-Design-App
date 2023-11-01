import 'dart:convert';

PostAPi postAPiFromJson(String str) => PostAPi.fromJson(json.decode(str));

String postAPiToJson(PostAPi data) => json.encode(data.toJson());

class PostAPi {
  int? code;
  Data? data;

  PostAPi({
    this.code,
    this.data,
  });

  factory PostAPi.fromJson(Map<String, dynamic> json) => PostAPi(
        code: json["code"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": data?.toJson(),
      };
}

class Data {
  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  dynamic nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Data({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  int? id;
  String? gameNumber;
  String? gameName;
  String? barcode;
  String? imageUrl;
  List<dynamic>? lotteries;

  Datum({
    this.id,
    this.gameNumber,
    this.gameName,
    this.barcode,
    this.imageUrl,
    this.lotteries,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        gameNumber: json["game_number"],
        gameName: json["game_name"],
        barcode: json["barcode"],
        imageUrl: json["image_url"],
        lotteries: json["lotteries"] == null
            ? []
            : List<dynamic>.from(json["lotteries"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "game_number": gameNumber,
        "game_name": gameName,
        "barcode": barcode,
        "image_url": imageUrl,
        "lotteries": lotteries == null
            ? []
            : List<dynamic>.from(lotteries!.map((x) => x)),
      };
}
