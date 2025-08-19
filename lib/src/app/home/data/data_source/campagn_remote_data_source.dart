import 'package:injectable/injectable.dart';
import 'package:my_flyn/src/app/home/data/mappers/campaign_mapper.dart';
import 'package:my_flyn/src/app/home/data/models/campaign_model.dart';
import 'package:my_flyn/src/app/home/domain/entities/campaign_entities.dart';
import 'package:my_flyn/utils/dummy_data.dart';

@injectable
class CampaignRemoteDataSource {

  Future<CampaignEntities> getCampaigns() async {
    print("Method called");
    return CampaignEntities(data: CampaignModel.fromJson(campaigns).toCampaignEntities().data);
  }

}