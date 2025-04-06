import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/first_board_row.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/second_board_row.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/third_board_row.dart';

class BoardContainer extends StatelessWidget {
  const BoardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.getWidth(context)*0.034,
          vertical: ScreenSize.getHeight(context)*0.012
      ),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.1173)
      ),
      child: const Column(
        children: [
          Expanded(child: FirstBoardRow()),
          Divider(thickness: 1,color: AppColors.black,height: 0,),
          Expanded(child: SecondBoardRow()),
          Divider(thickness: 1,color: AppColors.black,height: 0,),
          Expanded(child: ThirdBoardRow()),
        ],
      ),
    );
  }
}