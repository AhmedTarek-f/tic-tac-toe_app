import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/constants/app_images.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/game_mode_choice.dart';

class TicTacToeBackgroundImg extends StatelessWidget {
  const TicTacToeBackgroundImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.getHeight(context)*0.5,
      width:  ScreenSize.getWidth(context),
      child: Stack(
        children: [
          Image.asset(
            AppImages.xOBackgroundImage,
            fit: BoxFit.cover,
            width: ScreenSize.getWidth(context),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenSize.getHeight(context)*0.06),
            child: Center(
              child: Text(
                "Tic-Tac-Toe",
                style: AppFonts.fontSize40Black,
              ),
            ),
          ),
          const GameModeChoice()
        ],
      ),
    );
  }
}