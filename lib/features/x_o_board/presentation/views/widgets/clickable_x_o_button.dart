import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_app/core/constants/app_images.dart';

class ClickableXOButton extends StatelessWidget {
  const ClickableXOButton({super.key, this.xOrO = ""});
  final String xOrO;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: xOrO == ""? (){} : null,
      child: xOrO == ""? const SizedBox.shrink():
      xOrO == "x"? SvgPicture.asset(
        AppImages.xImage,
        fit: BoxFit.contain,
      ):
      SvgPicture.asset(
        AppImages.oImage,
        fit: BoxFit.contain,
      ),
    );
  }
}