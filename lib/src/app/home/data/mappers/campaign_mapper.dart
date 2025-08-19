import 'package:my_flyn/src/app/home/data/models/campaign_model.dart';
import 'package:my_flyn/src/app/home/domain/entities/campaign_entities.dart';

extension CampaignMapper on CampaignModel {
  CampaignEntities toCampaignEntities() {
    return CampaignEntities(data: data!.map((e) => e.toSingleCampaignEntities()).toList());
  }
}

extension SingleCampaignMapper on CampaignData {
  SingleCampaignEntities toSingleCampaignEntities() {
    return SingleCampaignEntities(image: image!, title: title!, description: description!, category: category!);
  }
}

