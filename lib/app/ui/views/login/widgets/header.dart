import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:g60_app_flutter_final/core/theme/app_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
                  width: 190,
                  height: 190,
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
