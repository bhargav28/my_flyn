// To parse this JSON data, do
//
//     final campaignModel = campaignModelFromJson(jsonString);

import 'dart:convert';

CampaignModel campaignModelFromJson(String str) => CampaignModel.fromJson(json.decode(str));

String campaignModelToJson(CampaignModel data) => json.encode(data.toJson());

class CampaignModel {
  List<CampaignData>? data;

  CampaignModel({
    this.data,
  });

  factory CampaignModel.fromJson(Map<String, dynamic> json) => CampaignModel(
    data: json["data"] == null ? [] : List<CampaignData>.from(json["data"]!.map((x) => CampaignData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class CampaignData {
  String? image;
  String? title;
  String? description;
  List<String>? category;

  CampaignData({
    this.image,
    this.title,
    this.description,
    this.category,
  });

  factory CampaignData.fromJson(Map<String, dynamic> json) => CampaignData(
    image: json["image"],
    title: json["title"],
    description: json["description"],
    category: json["category"] == null ? [] : List<String>.from(json["category"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "description": description,
    "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
  };
}
