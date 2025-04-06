import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_images.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/choice_container.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_state.dart';

class XOROSelectionRow extends StatelessWidget {
  const XOROSelectionRow({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ChoiceContainer(
            onTap: () {
              if (!controller.startWithX) {
                controller.toggleGameStartWithXORO();
              }
            },
            image: AppImages.xImage,
            backgroundColor: controller.startWithX? AppColors.darkBlue :AppColors.white,
          ),
          SizedBox(width: ScreenSize.getWidth(context) * 0.04,),
          ChoiceContainer(
            onTap: () {
              if (controller.startWithX) {
                controller.toggleGameStartWithXORO();
              }
            },
            image: AppImages.oImage,
            backgroundColor: controller.startWithX? AppColors.white :AppColors.darkBlue,
          ),
        ],
      ),
    );
  }
}