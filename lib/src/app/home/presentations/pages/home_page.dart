import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flyn/src/app/home/presentations/widgets/campaign_status_widget.dart';
import 'package:my_flyn/src/app/home/presentations/widgets/common_list_tile_widget.dart';
import 'package:my_flyn/src/app/home/presentations/widgets/user_widget.dart';
import 'package:my_flyn/src/common/constant/image_helper.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';
import 'package:my_flyn/src/routes/app_route_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20 ,right: 20, top: 87),
        child: Column(
          children: [
            // User
            UserWidget(),

            // Campaign
            CampaignWidget(),

            // My Information
            const SizedBox(height: 40),
            CommonListTileWidget(
              image: ImageHelper.user,
              title: StringHelper.myInformation,
              onTap: () {
                context.push(AppRouteName.myInformation);
              },
            ),

            // Announcement
            CommonListTileWidget(
              image: ImageHelper.note,
              title: StringHelper.announcement,
              onTap: () {
                // TODO: announcement
              },
            ),

            // Enquiry
            CommonListTileWidget(
              image: ImageHelper.messages,
              title: StringHelper.inquiry,
              onTap: () {
                // TODO: Enquiry
              },
            ),

            // FAQ
            CommonListTileWidget(
              image: ImageHelper.messageQue,
              title: StringHelper.faq,
              onTap: () {
                // TODO: FAQ
              },
            ),

            // Term and Policy
            CommonListTileWidget(
              image: ImageHelper.taskSquare,
              title: StringHelper.termNPolicy,
              onTap: () {
                // TODO: Term and Policy
              },
            ),

            // Logout
            CommonListTileWidget(
              image: ImageHelper.logout,
              title: StringHelper.logout,
              onTap: () {
                // TODO: Logout
              },
            ),


            // Withdrawal
            CommonListTileWidget(
              image: ImageHelper.breakAway,
              title: StringHelper.withdrawal,
              onTap: () {
                // TODO: My Information
              },
            ),

          ],
        ),
      ),
    );
  }
}
