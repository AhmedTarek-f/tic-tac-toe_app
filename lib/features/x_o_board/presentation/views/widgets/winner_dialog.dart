import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/core/utlis/widgets/custom_button.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/home_view.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';

class WinnerDialog extends StatelessWidget {
  const WinnerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<XOBoardCubit>(context);
    return Center(
      child: Container(
        width: ScreenSize.getWidth(context)*0.7,
        height: ScreenSize.getHeight(context)*0.28,
        padding: EdgeInsets.symmetric(horizontal: ScreenSize.getWidth(context)*0.016,vertical: ScreenSize.getHeight(context)*0.02),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.1173),
          color: AppColors.cyan,
          gradient: const LinearGradient(
              colors: [
                AppColors.blue,
                AppColors.cyan,
                AppColors.darkBlue,
              ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Column(
          children: [
            controller.isDraw?
            Text(
              "Draw",
              style: AppFonts.fontSize24Medium,
              textAlign: TextAlign.center,
            ) :
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    child: Text(
                      controller.winnerPlayerName!,
                      style: AppFonts.fontSize24Medium,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(
                  " Wins",
                  style: AppFonts.fontSize24Medium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: ScreenSize.getHeight(context)*0.03,),
            CustomButton(
                buttonTitle: "Start New Game",
              width: ScreenSize.getWidth(context)*0.55,
              height: ScreenSize.getHeight(context)*0.06,
              backgroundColor: AppColors.blue,
              style: AppFonts.fontSize16Normal.copyWith(color: AppColors.white),
              onPressed: (){
                  controller.isNormalMode?
                  controller.startNewNormalGame():
                  controller.startOneWinnerGame();
              },
            ),
            SizedBox(height: ScreenSize.getHeight(context)*0.01,),
            CustomButton(
                buttonTitle: "Change Game Mode",
              width: ScreenSize.getWidth(context)*0.55,
              height: ScreenSize.getHeight(context)*0.06,
              backgroundColor: AppColors.blue,
              style: AppFonts.fontSize16Normal.copyWith(color: AppColors.white),
              onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeView(),)
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
