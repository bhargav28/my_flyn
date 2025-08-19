import 'package:equatable/equatable.dart';

class CampaignEntities extends Equatable {
  final List<SingleCampaignEntities> data;

  const CampaignEntities({required this.data});

  @override
  List<Object?> get props => [data];
}

class SingleCampaignEntities extends Equatable {
  final String image;
  final String title;
  final String description;
  final List<String> category;

  const SingleCampaignEntities({required this.image, required this.title, required this.description, required this.category});

  @override
  List<Object?> get props => [image, title, description, category];
}