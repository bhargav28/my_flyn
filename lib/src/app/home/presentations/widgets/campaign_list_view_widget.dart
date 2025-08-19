import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flyn/get_it_configuration/get_it_configuration.dart';
import 'package:my_flyn/src/app/home/presentations/controller/campaign_controller.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';

class CampaignListViewWidget extends StatelessWidget {
  const CampaignListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final campaignController = getIt<CampaignController>();

    return Obx(
        () {
          final campaigns = campaignController.campaignEntities.value?.data ?? [];
          return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            itemCount: campaigns.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  // Thumbnail image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      campaigns[index].image,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 10),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            campaigns[index].title,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorHelper.blackFontColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width - 150,
                            child: Text(
                              campaigns[index].description,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: ColorHelper.fontColor3,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Tags
                          Spacer(),
                          Wrap(
                            spacing: 6,
                            children: campaigns[index].category.map((val) => Container(
                              height: 22,
                              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: ColorHelper.tagColor,
                              ),
                              child: Center(
                                child: Text(
                                  val,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
      },
    );
  }
}
