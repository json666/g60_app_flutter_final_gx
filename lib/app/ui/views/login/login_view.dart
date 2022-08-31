import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/app/ui/views/login/login_controller.dart';
import 'package:g60_app_flutter_final/app/ui/views/login/widgets/content.dart';
import 'package:g60_app_flutter_final/app/ui/views/login/widgets/header.dart';
import 'package:g60_app_flutter_final/core/theme/app_colors.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        //Color(0xFFFFD60A),
        Color(0xFF105F64),
        Color(0xFFD6DDFE)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor:Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              child: Column(
                children: const [
                  Header(),
                  Content(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
