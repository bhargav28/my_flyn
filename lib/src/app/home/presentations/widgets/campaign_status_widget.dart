import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flyn/src/app/home/presentations/pages/campaign_matching_page.dart';
import 'package:my_flyn/src/app/home/presentations/widgets/status_widget.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';
import 'package:my_flyn/src/routes/app_route_name.dart';

class CampaignWidget extends StatelessWidget {
  const CampaignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      margin: const EdgeInsets.only(top: 40),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: ColorHelper.cardColor, borderRadius: BorderRadius.circular(8), border: Border.all(color: ColorHelper.borderColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Campaign name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringHelper.myCampaign,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {
                  context.push(AppRouteName.campaignMatching);
                },
                child: SizedBox(
                  height: 16,
                  width: 16,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),

          // status
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatusWidget(count: 0, status: StringHelper.application),
                Icon(Icons.arrow_forward_ios_rounded, size: 14, color: ColorHelper.greyIconColor),
                StatusWidget(count: 0, status: StringHelper.inProgress),
                Icon(Icons.arrow_forward_ios_rounded, size: 14, color: ColorHelper.greyIconColor),
                StatusWidget(count: 0, status: StringHelper.complete),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


