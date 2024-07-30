import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/data/local/local_data.dart';
import 'package:furniture/utils/colors/app_colors.dart';

class IndexIndicator extends StatelessWidget {
  const IndexIndicator({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          onBoardData.length,
          (index) => Container(
            margin: EdgeInsets.only(right: 6.w),
            width: currentIndex == index ? 22.w : 8.w,
            height: 7.h,
            decoration: BoxDecoration(
              color: AppColors.c898D79,
              shape:
                  currentIndex == index ? BoxShape.rectangle : BoxShape.circle,
              borderRadius:
                  currentIndex == index ? BorderRadius.circular(10.r) : null,
            ),
          ),
        ),
      ),
    );
  }
}
