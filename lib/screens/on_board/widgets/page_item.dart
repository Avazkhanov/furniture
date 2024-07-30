import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/data/local/local_data.dart';
import 'package:furniture/data/models/on_board_model/on_board_model.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class PageItem extends StatelessWidget {
  const PageItem({super.key, required this.scrollController});
  final PageController scrollController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: scrollController,
      children: List.generate(
        onBoardData.length,
            (index) {
          OnBoardModel data = onBoardData[index];
          return Column(
            children: [
              30.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: Center(
                  child: Image.asset(
                    data.imagePath,
                  ),
                ),
              ),
              67.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 41.w,right: 10.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(data.svgPath),
                        9.horizontalSpace,
                        Text(
                          data.description,
                          style: AppTextStyle.poppinsMedium.copyWith(
                            color: AppColors.cC1AD8B,
                          ),
                        )
                      ],
                    ),
                    6.verticalSpace,
                    Text(
                      data.title,
                      style: AppTextStyle.poppinsSemiBold.copyWith(
                          fontSize: 30.sp, color: AppColors.black),
                    ),
                    6.verticalSpace,
                    Padding(
                      padding: EdgeInsets.only(left: 2.w,right: 60.w),
                      child: Text(
                        data.subTitle,
                        style: AppTextStyle.poppinsSemiBold.copyWith(
                            fontSize: 14.sp, color: AppColors.black60),
                      ),
                    ),
                    9.verticalSpace
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
