import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/core/utlis/widgets/custom_button.dart';

class GameModeChoice extends StatelessWidget {
  const GameModeChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ScreenSize.getHeight(context)*0.016,
      child: SizedBox(
        width: ScreenSize.getWidth(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              onPressed: (){},
              buttonTitle: "Normal game",
              backgroundColor: AppColors.blue,
              style: AppFonts.fontSize16Normal,
            ),
            CustomButton(
              onPressed: (){},
              buttonTitle: "One winner game",
            ),
          ],
        ),
      ),
    );
  }
}