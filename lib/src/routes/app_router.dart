import 'package:go_router/go_router.dart';
import 'package:my_flyn/src/app/home/presentations/pages/basic_information_page.dart';
import 'package:my_flyn/src/app/home/presentations/pages/campaign_matching_page.dart';
import 'package:my_flyn/src/app/home/presentations/pages/home_page.dart';
import 'package:my_flyn/src/app/home/presentations/pages/my_information_page.dart';
import 'package:my_flyn/src/app/home/presentations/pages/set_password_page.dart';
import 'package:my_flyn/src/common/widgets/error_page.dart';

import 'app_route_name.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: "Root",
        path: AppRouteName.root,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: "Campaign Matching",
        path: AppRouteName.campaignMatching,
        builder: (context, state) => const CampaignMatchingPage(),
      ),
      GoRoute(
        name: "My Information",
        path: AppRouteName.myInformation,
        builder: (context, state) => const MyInformationPage(),
      ),
      GoRoute(
        name: "Basic Information",
        path: AppRouteName.basicInformation,
        builder: (context, state) => const BasicInformationPage(),
      ),
      GoRoute(
        name: "Set Password",
        path: AppRouteName.setPassword,
        builder: (context, state) => const SetPasswordPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(),
  );
}
