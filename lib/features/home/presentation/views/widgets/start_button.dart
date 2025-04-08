import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/core/utlis/widgets/custom_button.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:tic_tac_toe_app/features/x_o_board/data/models/player_model.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/x_o_board_view.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return CustomButton(
      onPressed: (){
        if(controller.playersFormKey.currentState!.validate()){
          controller.changeAutoValidateModeToDisabled();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => BlocProvider<XOBoardCubit>(
                create: (context) => XOBoardCubit(
                    isStartWithX: controller.startWithX,
                    firstPlayerData: PlayerModel(
                        playerName: controller.firstPlayerNameController.text,
                        playerScore: 0,
                        oneWinnerGameSignsIndexes: controller.isNormalGameMode?null : [],
                    ),
                    secondPlayerData: PlayerModel(
                        playerName: controller.secondPlayerNameController.text,
                        playerScore: 0,
                       oneWinnerGameSignsIndexes: controller.isNormalGameMode?null : [],
                    ),
                  isNormalGameMode: controller.isNormalGameMode
                ),
                child: const XOBoardView(),
              ),
            ),
          );
        }
        else{
          controller.changeAutoValidateModeToAlways();
        }
      },
      buttonTitle: "Start",
      height: ScreenSize.getHeight(context)*0.05,
      backgroundColor: AppColors.darkBlue,
      style: AppFonts.fontSize16Normal.copyWith(fontWeight: FontWeight.w600),
    );
  }
}