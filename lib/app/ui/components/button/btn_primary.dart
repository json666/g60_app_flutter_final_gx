import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g60_app_flutter_final/core/theme/app_colors.dart';

class BtnPrimary extends StatelessWidget {
  BtnPrimary({
    required this.text,
    required this.onPressed,
  });

  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Color.fromRGBO(48, 95, 100, 1),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 55.h,
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
