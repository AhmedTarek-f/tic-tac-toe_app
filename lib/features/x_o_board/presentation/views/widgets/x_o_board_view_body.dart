import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/board_container.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/player_status.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/player_turn.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';

class XOBoardViewBody extends StatelessWidget {
  const XOBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<XOBoardCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.getWidth(context)*0.034,
        vertical: ScreenSize.getHeight(context)*0.016,
      ),
      child: Column(
        children: [
          PlayersStatus(
            firstPlayer: controller.firstPlayer,
            secondPlayer: controller.secondPlayer,
            isNormalGameMode: controller.isNormalMode,
          ),
          SizedBox(height: ScreenSize.getHeight(context)*0.012,),
          const PlayerTurn(),
          SizedBox(height: ScreenSize.getHeight(context)*0.012,),
          const Expanded(child: BoardContainer()),
        ],
      ),
    );
  }
}