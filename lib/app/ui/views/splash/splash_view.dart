import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g60_app_flutter_final/app/routes/app_routes.dart';
import 'package:g60_app_flutter_final/app/ui/views/splash/splash_controller.dart';
import 'package:g60_app_flutter_final/core/theme/app_colors.dart';

import 'package:get/get.dart';

class SpashView extends StatelessWidget {
  const SpashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        //init: SplashController(),
        builder: (controller) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          //Color(0xFFFFD60A),
          Color(0xFF305F64),
          Color(0xFFD6DDFE)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  width: 200,
                  height: 200,
                  'images/logo.png',
                  fit: BoxFit.cover,
                ),
                RichText(
                  text: TextSpan(
                    text: "Plant",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: AppColors.blueDark,
                          fontWeight: FontWeight.w900,
                        ),
                    children: [
                      TextSpan(
                        text: "Tree",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 40.w,
                  child: const LinearProgressIndicator(
                    backgroundColor: AppColors.blueDark,
                    color: AppColors.cyan,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
