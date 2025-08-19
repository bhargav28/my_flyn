import 'package:flutter/material.dart';
import 'package:my_flyn/src/common/constant/string_helper.dart';

import 'src/common/constant/color_helper.dart';
import 'src/routes/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: StringHelper.appName,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: ColorHelper.bgColor,

      ),
      routerConfig: AppRouter().router,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.noScaling,
          boldText: false,
        ),
        child: child!,
      ),
    );
  }
}
