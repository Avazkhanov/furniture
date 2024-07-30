import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/utils/colors/app_colors.dart';
import 'package:furniture/utils/styles/app_text_styles.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFieldContainer extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyBoardType;
  final String labelText;
  final Color labelTextColor;
  final Widget? suffixIcon;
  final MaskTextInputFormatter? maskTextInputFormatter;
  final bool isObscureText;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Function(String)? onChanged;
  final int? maxLines;
  final int? maxLength;

  const TextFieldContainer({
    super.key,
    this.hintText = '',
    required this.keyBoardType,
    required this.controller,
    this.labelText = 'Your label text',
    this.labelTextColor = Colors.black,
    this.suffixIcon = const SizedBox(),
    this.maskTextInputFormatter,
    this.isObscureText = false,
    this.focusNode,
    this.prefixIcon,
    this.onChanged,
    this.maxLines,
    this.maxLength,
  });

  @override
  State<TextFieldContainer> createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      obscureText: obscure,
      obscuringCharacter: "*",
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      focusNode: widget.focusNode,
      inputFormatters: widget.maskTextInputFormatter != null
          ? [widget.maskTextInputFormatter!]
          : null,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: AppTextStyle.poppinsRegular.copyWith(
          fontSize: 13.sp,
          color: widget.labelTextColor,
        ),
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isObscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                icon: Icon(
                    obscure ? CupertinoIcons.eye : CupertinoIcons.eye_slash),
              )
            : widget.suffixIcon,
        hintStyle: Theme.of(context).textTheme.titleMedium,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.cCBCBCB,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.black,
          ),
        ),
      ),
      style: AppTextStyle.poppinsMedium.copyWith(
        fontSize: 18.sp,
        color: AppColors.black,
      ),
      keyboardType: widget.keyBoardType,
      // maxLines: ,
      textAlign: TextAlign.start,
    );
  }
}
