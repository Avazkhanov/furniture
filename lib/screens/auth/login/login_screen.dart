import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/screens/auth/login/widgets/remember_me_item.dart';
import 'package:furniture/screens/auth/widgets/auth_app_bar.dart';
import 'package:furniture/screens/route.dart';
import 'package:furniture/screens/widgets/button_container.dart';
import 'package:furniture/screens/widgets/text_field.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/images/app_images.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const AuthAppBar(
              title: "Welcome Back!",
              subtitle: "Please sign in to your account",
              backgroundColor: AppColors.cB4D5E0,
            ),
            28.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                children: [
                  TextFieldContainer(
                    labelText: "Email Address",
                    labelTextColor: AppColors.cB4B6B5,
                    keyBoardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  20.verticalSpace,
                  TextFieldContainer(
                    labelText: "Password",
                    maxLines: 1,
                    labelTextColor: AppColors.cB4B6B5,
                    keyBoardType: TextInputType.emailAddress,
                    controller: passwordController,
                    isObscureText: true,
                  ),
                  25.verticalSpace,
                  const RememberMeItem(),
                  70.verticalSpace,
                  ButtonContainer(
                    title: "Sign In",
                    onTap: () {
                      FocusManager.instance.primaryFocus!.unfocus();
                      Navigator.pushReplacementNamed(context, RouteNames.home);
                    },
                    borderRadius: 16,
                    height: 56,
                  ),
                  6.verticalSpace,
                  Center(
                    child: Text(
                      "Or",
                      style: AppTextStyle.poppinsRegular
                          .copyWith(fontSize: 14.sp, color: AppColors.c897E73),
                    ),
                  ),
                  6.verticalSpace,
                  ButtonContainer(
                    title: "Sign In with Google",
                    icon: SvgPicture.asset(AppImages.googleIcon),
                    textColor: AppColors.black,
                    onTap: () {},
                    borderRadius: 16,
                    background: AppColors.cF2E8DE,
                    height: 56,
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an Account ? ",
                  style: AppTextStyle.poppinsRegular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.c897E73,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.register);
                  },
                  child: Text(
                    "Sign In",
                    style: AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.cEA592A,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
