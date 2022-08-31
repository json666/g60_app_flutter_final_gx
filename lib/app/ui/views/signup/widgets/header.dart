import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g60_app_flutter_final/core/theme/app_colors.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 7.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
                  width: 150,
                  height: 150,
                  'images/logo.png',
                  fit: BoxFit.cover,
                ),
          RichText(
            text: TextSpan(
              text: "Find",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.w900),
              children: [
                TextSpan(
                  text: "Home",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
