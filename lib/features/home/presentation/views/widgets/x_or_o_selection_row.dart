import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_images.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/choice_container.dart';

class XOROSelectionRow extends StatelessWidget {
  const XOROSelectionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ChoiceContainer(
          onTap: (){},
          image: AppImages.xImage,
          backgroundColor: AppColors.blue,
        ),
        SizedBox(width: ScreenSize.getWidth(context)*0.04,),
        ChoiceContainer(
          onTap: (){},
          image: AppImages.oImage,
        ),
      ],
    );
  }
}