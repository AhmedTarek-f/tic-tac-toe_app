import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/first_board_row.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/second_board_row.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/third_board_row.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/winner_dialog.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_state.dart';

class BoardContainer extends StatelessWidget {
  const BoardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<XOBoardCubit>(context);
    return BlocBuilder<XOBoardCubit, XOBoardState>(
      builder: (context, state) => Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenSize.getWidth(context) * 0.034,
                vertical: ScreenSize.getHeight(context) * 0.012
            ),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(
                    ScreenSize.getWidth(context) * 0.1173)
            ),
            child: AbsorbPointer(
              absorbing: controller.winnerPlayerName != null,
              child: const Column(
                children: [
                  Expanded(child: FirstBoardRow()),
                  Divider(thickness: 1, color: AppColors.black, height: 0,),
                  Expanded(child: SecondBoardRow()),
                  Divider(thickness: 1, color: AppColors.black, height: 0,),
                  Expanded(child: ThirdBoardRow()),
                ],
              ),
            ),
          ),
          if(controller.winnerPlayerName!= null || controller.isDraw) const WinnerDialog(),
        ],
      ),
    );
  }
}