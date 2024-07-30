import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/screens/auth/widgets/auth_app_bar.dart';
import 'package:furniture/screens/route.dart';
import 'package:furniture/screens/widgets/button_container.dart';
import 'package:furniture/screens/widgets/text_field.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/formaters/formatters.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isValid = false;

  @override
  void initState() {
    super.initState();
    nameController.addListener(_validateForm);
    emailController.addListener(_validateForm);
    phoneController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  @override
  void dispose() {
    nameController.removeListener(_validateForm);
    emailController.removeListener(_validateForm);
    phoneController.removeListener(_validateForm);
    passwordController.removeListener(_validateForm);

    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _validateForm() {
    setState(() {
      isValid = nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          phoneController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AuthAppBar(
                title: "Create new Account!",
                subtitle: "Please fill in the form to continue",
                backgroundColor:
                    isValid ? AppColors.cABCF9F : AppColors.cEECE91,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: Column(
                  children: [
                    10.verticalSpace,
                    TextFieldContainer(
                      keyBoardType: TextInputType.name,
                      controller: nameController,
                      labelTextColor: AppColors.cB4B6B5,
                      labelText: "Full name",
                    ),
                    10.verticalSpace,
                    TextFieldContainer(
                      keyBoardType: TextInputType.emailAddress,
                      controller: emailController,
                      labelTextColor: AppColors.cB4B6B5,
                      labelText: "Email Address",
                    ),
                    10.verticalSpace,
                    TextFieldContainer(
                      keyBoardType: TextInputType.phone,
                      controller: phoneController,
                      labelTextColor: AppColors.cB4B6B5,
                      maskTextInputFormatter: AppInputFormatters.phoneFormatter,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Text(
                          "+998",
                          style: AppTextStyle.poppinsMedium.copyWith(
                            fontSize: 18.sp,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      labelText: "Phone Number",
                    ),
                    10.verticalSpace,
                    TextFieldContainer(
                      keyBoardType: TextInputType.text,
                      controller: passwordController,
                      maxLines: 1,
                      labelTextColor: AppColors.cB4B6B5,
                      labelText: "Password",
                      isObscureText: true,
                    ),
                    50.verticalSpace,
                    ButtonContainer(
                      title: "Create Account",
                      onTap: () {
                        FocusManager.instance.primaryFocus!.unfocus();
                        Navigator.pushReplacementNamed(
                            context, RouteNames.home);
                      },
                    ),
                    30.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Have an Account ? ",
                          style: AppTextStyle.poppinsRegular.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.c897E73,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RouteNames.login);
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
            ],
          ),
        ),
      ),
    );
  }
}
