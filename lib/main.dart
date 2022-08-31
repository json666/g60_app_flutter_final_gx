import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/app/routes/app_routes.dart';
import 'package:g60_app_flutter_final/app/routes/app_views.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g60_app_flutter_final/core/utils/dependency_injection.dart';
import 'package:get/get.dart';

void main() {
   DependencyInjection.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              /*routes: {
          "/": (context) => InitialScreen(),
          "homePage": (context) => HomePage(),
        },*/
              initialRoute: AppRoutes.SPLASH,
              getPages: AppViews.views);
        });
  }
}
