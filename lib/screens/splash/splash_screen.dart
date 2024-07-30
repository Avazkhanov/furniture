import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/data/storage_repository/storage_repository.dart';
import 'package:furniture/screens/route.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/images/app_images.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _init() async {
    bool onBoardShowed = StorageRepository.getBool(key: "on_board");
    await Future.delayed(const Duration(seconds: 2), () {
      if (onBoardShowed) {
        Navigator.pushReplacementNamed(context, RouteNames.login);
      } else {
        Navigator.pushReplacementNamed(context, RouteNames.onBoard);
      }
    });
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo, color: AppColors.black),
            16.verticalSpace,
            Text(
              "YSB.Funiture",
              style: AppTextStyle.poppinsRegular
                  .copyWith(fontSize: 22.sp, color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}
