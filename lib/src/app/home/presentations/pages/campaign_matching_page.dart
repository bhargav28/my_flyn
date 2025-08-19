import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flyn/src/app/home/presentations/widgets/campaign_list_view_widget.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';

class CampaignMatchingPage extends StatefulWidget {
  const CampaignMatchingPage({super.key});

  @override
  State<CampaignMatchingPage> createState() => _CampaignMatchingPageState();
}

class _CampaignMatchingPageState extends State<CampaignMatchingPage> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: ColorHelper.bgColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20 ,right: 20),
            child: Text(
              StringHelper.campaignMatching,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Tab view
          const SizedBox(height: 20),
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: StringHelper.application,
              ),
              Tab(
                text: StringHelper.inProgress,
              ),
              Tab(
                text: StringHelper.complete,
              ),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorHelper.blackFontColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorHelper.blackFontColor2,
            ),

          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                CampaignListViewWidget(),
                CampaignListViewWidget(),
                CampaignListViewWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
