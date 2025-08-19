import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:my_flyn/core/error/failures.dart';
import 'package:my_flyn/src/app/home/domain/entities/campaign_entities.dart';
import 'package:my_flyn/src/app/home/domain/use_case/campaign_use_case.dart';

@lazySingleton
class CampaignController extends GetxController {
  final CampaignUseCase _campaignUseCase;

  CampaignController(this._campaignUseCase) {
    _getCampaigns();
  }

  final RxBool isLoading = false.obs;
  final Rx<CampaignEntities?> campaignEntities = Rx<CampaignEntities?>(null);
  final RxString errorMessage = ''.obs;

  void _getCampaigns() async {
    debugPrint("getCampaigns");
    Either<Failure, CampaignEntities> response = await _campaignUseCase();
    response.fold((l) {
      errorMessage.value = l.message;
    }, (r) {
      campaignEntities.value = r;
      debugPrint("Data: ${campaignEntities.value?.data}");
    });
  }
}
