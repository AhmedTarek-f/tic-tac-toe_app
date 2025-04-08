import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.buttonTitle,
    this.style,
    this.backgroundColor, this.width, this.height,
  });

  final String buttonTitle;
  final void Function()? onPressed;
  final TextStyle? style;
  final Color? backgroundColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0426)),
          backgroundColor: backgroundColor ?? AppColors.white,
        ),
        onPressed: onPressed,
        child: FittedBox(
          child: Text(
            buttonTitle,
            style: style ?? AppFonts.fontSize16Normal.copyWith(color: AppColors.black),
          ),
        ),
      ),
    );
  }
}