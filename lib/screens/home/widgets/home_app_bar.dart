import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/images/app_images.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton.outlined(
        disabledColor: AppColors.cC5CDD2.withOpacity(.20),
        onPressed: () {},
        icon: SvgPicture.asset(AppImages.menuIcon),
      ),
      centerTitle: true,
      title: Text(
        "Home",
        style: AppTextStyle.poppinsMedium.copyWith(
          fontSize: 16.sp,
          color: AppColors.black100,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppImages.qrCodeScanIcon),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppImages.searchIcon),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56.h);
}
