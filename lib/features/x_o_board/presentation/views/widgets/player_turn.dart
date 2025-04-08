import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_state.dart';

class PlayerTurn extends StatelessWidget {
  const PlayerTurn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final boardController = BlocProvider.of<XOBoardCubit>(context);
    return BlocBuilder<XOBoardCubit, XOBoardState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: SizedBox(
              child: Text(
                boardController.checkPlayerTurn()?
                boardController.firstPlayer.playerName:
                boardController.secondPlayer.playerName,
                style: AppFonts.fontSize36Bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Text(
            " Turn",
            style: AppFonts.fontSize36Bold,
          ),
        ],
      ),
    );
  }
}