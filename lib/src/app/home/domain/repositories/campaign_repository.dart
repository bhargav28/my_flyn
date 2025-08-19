import 'package:dartz/dartz.dart';
import 'package:my_flyn/core/error/failures.dart';
import 'package:my_flyn/src/app/home/domain/entities/campaign_entities.dart';

abstract class CampaignRepository {

  Future<Either<Failure, CampaignEntities>> getCampaigns();
}