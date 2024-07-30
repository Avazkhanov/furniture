import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/images/app_images.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key, required this.title, required this.subtitle, required this.backgroundColor});

  final String title;
  final String subtitle;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: double.infinity,
      color: backgroundColor,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            bottom: 10.h,
            child: Image.asset(AppImages.spiral),
          ),
          Padding(
            padding: EdgeInsets.only(top: 38.h, left: 29.w, right: 28.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.logo,
                  color: AppColors.black,
                  height: 46.h,
                ),
                28.verticalSpace,
                Text(
                  title,
                  style: AppTextStyle.poppinsRegular
                      .copyWith(color: AppColors.black, fontSize: 22.sp),
                ),
                11.verticalSpace,
                Text(
                  subtitle,
                  style: AppTextStyle.poppinsSemiBold
                      .copyWith(color: AppColors.black, fontSize: 32.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
