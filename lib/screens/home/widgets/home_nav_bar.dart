import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/images/app_images.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: CustomPaint(
        painter: BottomNavPainter(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_filled,
                    color: currentIndex == 0
                        ? AppColors.cEA592A
                        : AppColors.cEECE91,
                    size: 24.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                ),
                10.verticalSpace,
                if (currentIndex == 0)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 5.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                          color: AppColors.cEA592A,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.cEA592A,
                              blurRadius: 13.r,
                              offset: const Offset(0, -2),
                            )
                          ]),
                    ),
                  )
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    currentIndex == 1
                        ? CupertinoIcons.heart_fill
                        : CupertinoIcons.heart,
                    color: currentIndex == 1
                        ? AppColors.cEA592A
                        : AppColors.cEECE91,
                    size: 24.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                ),
                10.verticalSpace,
                if (currentIndex == 1)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 5.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                          color: AppColors.cEA592A,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.cEA592A,
                              blurRadius: 13.r,
                              offset: const Offset(0, -2),
                            )
                          ]),
                    ),
                  )
              ],
            ),
            FloatingActionButton(
              onPressed: () {},
              shape: const CircleBorder(),
              mini: true,
              backgroundColor: AppColors.cEA592A,
              child: SvgPicture.asset(
                AppImages.moreIcon,
                colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    currentIndex == 2
                        ? Icons.shopping_bag
                        : Icons.shopping_bag_outlined,
                    color: currentIndex == 2
                        ? AppColors.cEA592A
                        : AppColors.cEECE91,
                    size: 24.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                ),
                10.verticalSpace,
                if (currentIndex == 2)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 5.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                          color: AppColors.cEA592A,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.cEA592A,
                              blurRadius: 13.r,
                              offset: const Offset(0, -2),
                            )
                          ]),
                    ),
                  )
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    CupertinoIcons.person_fill,
                    color: currentIndex == 3
                        ? AppColors.cEA592A
                        : AppColors.cEECE91,
                    size: 24.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                ),
                if (currentIndex == 3)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 5.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                          color: AppColors.cEA592A,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.cEA592A,
                              blurRadius: 13.r,
                              offset: const Offset(0, -2),
                            )
                          ]),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.black100
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, 20)
      ..quadraticBezierTo(-20, -40, 35, 18)
      ..lineTo(size.width * 0.40, 20)
      ..lineTo(size.width * 0.90, 20)
      ..quadraticBezierTo(size.width, -30, size.width + 5, 0)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
