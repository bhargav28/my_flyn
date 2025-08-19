
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_flyn/core/error/failures.dart';
import 'package:my_flyn/src/app/home/data/data_source/campagn_remote_data_source.dart';
import 'package:my_flyn/src/app/home/domain/entities/campaign_entities.dart';
import 'package:my_flyn/src/app/home/domain/repositories/campaign_repository.dart';

@Singleton(as: CampaignRepository)
class CampaignRepositoryImpl extends CampaignRepository {

  final CampaignRemoteDataSource _campaignRemoteDataSource;

  CampaignRepositoryImpl(this._campaignRemoteDataSource);

  @override
  Future<Either<Failure, CampaignEntities>> getCampaigns() async {
    try {
      CampaignEntities entities = await _campaignRemoteDataSource.getCampaigns();
      return Right(entities);
    } catch (e) {
      return Left(UnknownFailure(message: "Something went wrong"));
    }
  }

}