// To parse this JSON data, do
//
//     final testAPiModel = testAPiModelFromJson(jsonString);

import 'dart:convert';

TestAPiModel testAPiModelFromJson(String str) =>
    TestAPiModel.fromJson(json.decode(str));

String testAPiModelToJson(TestAPiModel data) => json.encode(data.toJson());

class TestAPiModel {
  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  TestAPiModel({
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

  factory TestAPiModel.fromJson(Map<String, dynamic> json) => TestAPiModel(
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
  String? totalSold;
  dynamic totalTransfered;
  dynamic totalAdjusted;
  String? stockPrice;
  String? stock;
  String? sku;
  String? product;
  Type? type;
  int? productId;
  Unit? unit;
  int? enableStock;
  String? unitPrice;
  ProductVariation? productVariation;
  ProductVariation? variationName;
  LocationName? locationName;
  int? locationId;
  int? variationId;

  Datum({
    this.totalSold,
    this.totalTransfered,
    this.totalAdjusted,
    this.stockPrice,
    this.stock,
    this.sku,
    this.product,
    this.type,
    this.productId,
    this.unit,
    this.enableStock,
    this.unitPrice,
    this.productVariation,
    this.variationName,
    this.locationName,
    this.locationId,
    this.variationId,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        totalSold: json["total_sold"] ?? '',
        totalTransfered: json["total_transfered"],
        totalAdjusted: json["total_adjusted"],
        stockPrice: json["stock_price"],
        stock: json["stock"],
        sku: json["sku"] ?? '',
        product: json["product"] ?? '',
        type: typeValues.map[json["type"]]!,
        productId: json["product_id"],
        unit: unitValues.map[json["unit"]]!,
        enableStock: json["enable_stock"],
        unitPrice: json["unit_price"] ?? '',
        productVariation:
            productVariationValues.map[json["product_variation"]]!,
        variationName: productVariationValues.map[json["variation_name"]]!,
        locationName: locationNameValues.map[json["location_name"]]!,
        locationId: json["location_id"],
        variationId: json["variation_id"],
      );

  Map<String, dynamic> toJson() => {
        "total_sold": totalSold,
        "total_transfered": totalTransfered,
        "total_adjusted": totalAdjusted,
        "stock_price": stockPrice,
        "stock": stock,
        "sku": sku,
        "product": product,
        "type": typeValues.reverse[type],
        "product_id": productId,
        "unit": unitValues.reverse[unit],
        "enable_stock": enableStock,
        "unit_price": unitPrice,
        "product_variation": productVariationValues.reverse[productVariation],
        "variation_name": productVariationValues.reverse[variationName],
        "location_name": locationNameValues.reverse[locationName],
        "location_id": locationId,
        "variation_id": variationId,
      };
}

enum LocationName { ERATECH }

final locationNameValues = EnumValues({"eratech": LocationName.ERATECH});

enum ProductVariation { DUMMY }

final productVariationValues = EnumValues({"DUMMY": ProductVariation.DUMMY});

enum Type { SINGLE }

final typeValues = EnumValues({"single": Type.SINGLE});

enum Unit { PC_S }

final unitValues = EnumValues({"Pc(s)": Unit.PC_S});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
