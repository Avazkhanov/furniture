import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class RememberMeItem extends StatefulWidget {
  const RememberMeItem({super.key});

  @override
  State<RememberMeItem> createState() => _RememberMeItemState();
}

class _RememberMeItemState extends State<RememberMeItem> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        SizedBox(
          height: 23.h,
          width: 23.w,
          child: Checkbox(
            materialTapTargetSize:
            MaterialTapTargetSize.shrinkWrap,
            value: rememberMe,
            onChanged: (v) {
              setState(() {
                rememberMe = v!;
              });
            },
          ),
        ),
        5.horizontalSpace,
        Text(
          "Remember me",
          style: AppTextStyle.poppinsRegular.copyWith(
            fontSize: 16.sp,
            color: AppColors.c897E73,
          ),
        ),
        const Spacer(),
        Text(
          "Forget Password?",
          style: AppTextStyle.poppinsRegular.copyWith(
            fontSize: 16.sp,
            color: AppColors.c897E73,
          ),
        ),
      ],
    );
  }
}
