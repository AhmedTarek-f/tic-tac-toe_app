import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/core/utlis/widgets/custom_button.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_state.dart';

class GameModeChoice extends StatelessWidget {
  const GameModeChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return Positioned(
      bottom: ScreenSize.getHeight(context)*0.016,
      child: SizedBox(
        width: ScreenSize.getWidth(context),
        child: BlocBuilder<HomeCubit,HomeState>(
          builder:(context, state) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPressed: (){
                  if(!controller.isNormalGameMode){
                    controller.toggleGameMode();
                  }
                },
                buttonTitle: "Normal game",
                backgroundColor: controller.isNormalGameMode? AppColors.darkBlue : AppColors.white,
                style: AppFonts.fontSize16Normal.copyWith(color: controller.isNormalGameMode? AppColors.white : AppColors.black),
              ),
              CustomButton(
                onPressed: (){
                  if(controller.isNormalGameMode){
                    controller.toggleGameMode();
                  }
                },
                buttonTitle: "One winner game",
                backgroundColor: controller.isNormalGameMode? AppColors.white : AppColors.darkBlue,
                style: AppFonts.fontSize16Normal.copyWith(color: controller.isNormalGameMode? AppColors.black : AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}