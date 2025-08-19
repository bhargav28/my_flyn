import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flyn/src/app/home/presentations/widgets/common_list_tile_widget.dart';
import 'package:my_flyn/src/common/constant/color_helper.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';
import 'package:my_flyn/src/routes/app_route_name.dart';

class MyInformationPage extends StatelessWidget {
  const MyInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: ColorHelper.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringHelper.myInformation,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 40),
            CommonListTileWidget(title: StringHelper.basicInfo, onTap: () {
              context.push(AppRouteName.basicInformation);
            }),
            CommonListTileWidget(title: StringHelper.setPassword, onTap: () {
              context.push(AppRouteName.setPassword);
            }),
            CommonListTileWidget(title: StringHelper.categoryOfInterest, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
