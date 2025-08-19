import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_flyn/core/error/failures.dart';
import 'package:my_flyn/src/app/home/domain/entities/campaign_entities.dart';
import 'package:my_flyn/src/app/home/domain/repositories/campaign_repository.dart';

@injectable
class CampaignUseCase {

  final CampaignRepository _campaignRepository;

  CampaignUseCase(this._campaignRepository);

  Future<Either<Failure, CampaignEntities>> call() async {
    return await _campaignRepository.getCampaigns();
  }
}