import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer({
    super.key,
    required this.image,
    this.backgroundColor,
    this.onTap
  });
  final String image;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.getWidth(context)*0.104,
          vertical: ScreenSize.getHeight(context)*0.048,
        ),
        height: ScreenSize.getHeight(context)*0.2019,
        width: ScreenSize.getWidth(context)*0.4373,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.0853)
        ),
        child: SvgPicture.asset(image,),
      ),
    );
  }
}