import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/players_names_form.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/start_button.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/tic_tac_toe_background_img.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/x_or_o_selection_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: ScreenSize.getHeight(context)*0.02,),
          const TicTacToeBackgroundImg(),
          SizedBox(height: ScreenSize.getHeight(context)*0.03,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenSize.getWidth(context)*0.032),
            child: Column(
              children: [
                const PlayersNamesForm(),
                SizedBox(height: ScreenSize.getHeight(context)*0.03,),
                Text(
                  "Pick who goes first?",
                  style: AppFonts.fontSize24Medium,
                ),
                SizedBox(height: ScreenSize.getHeight(context)*0.0209,),
                const XOROSelectionRow(),
                SizedBox(height: ScreenSize.getHeight(context)*0.025,),
                const StartButton(),
                SizedBox(height: ScreenSize.getHeight(context)*0.015,),
              ],
            ),
          )
        ],
      ),
    );
  }
}