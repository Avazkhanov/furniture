import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/data/local/local_data.dart';
import 'package:furniture/data/storage_repository/storage_repository.dart';
import 'package:furniture/screens/on_board/widgets/index_indicator.dart';
import 'package:furniture/screens/on_board/widgets/page_item.dart';
import 'package:furniture/screens/route.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController scrollController = PageController();
  int currentIndex = 0;
  bool isAnimating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageItem(scrollController: scrollController),
          IndexIndicator(currentIndex: currentIndex),
          Positioned(
            right: 29.w,
            bottom: 31.h,
            child: Ink(
              height: 94.h,
              width: 95.w,
              decoration: const BoxDecoration(
                  color: AppColors.cFF871C, shape: BoxShape.circle),
              child: InkWell(
                onTap: isAnimating
                    ? null
                    : () {
                        if (currentIndex < onBoardData.length - 1) {
                          setState(() {
                            isAnimating = true;
                          });
                          scrollController
                              .animateToPage(
                            currentIndex + 1,
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.easeIn,
                          )
                              .then((_) {
                            setState(() {
                              currentIndex++;
                              isAnimating = false;
                            });
                          });
                        } else {
                          StorageRepository.setBool(
                              key: "on_board", value: true);
                          Navigator.pushReplacementNamed(
                              context, RouteNames.login);
                        }
                      },
                customBorder: const CircleBorder(),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 700),
                      left: isAnimating ? 95.w : 25.w,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 700),
                        opacity: isAnimating ? 0 : 1,
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          size: 40.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 65.h,
            left: 43.w,
            child: GestureDetector(
              onTap: () {
                StorageRepository.setBool(key: "on_board", value: true);
                Navigator.pushReplacementNamed(context, RouteNames.login);
              },
              child: Text(
                "Skip",
                style: AppTextStyle.poppinsMedium
                    .copyWith(color: AppColors.c999999, fontSize: 16.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
