import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/x_o_board/data/models/player_model.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/board_container.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/player_status.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/player_turn.dart';

class XOBoardViewBody extends StatelessWidget {
  const XOBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.getWidth(context)*0.034,
        vertical: ScreenSize.getHeight(context)*0.016,
      ),
      child: Column(
        children: [
          const PlayersStatus(
            firstPlayer: PlayerModel(
                playerName: "Ahmed tarek",
                playerScore: 2
            ),
            secondPlayer: PlayerModel(
                playerName: "Bassem Tarek",
                playerScore: 1
            ),
            isNormalGameMode: true,
          ),
          SizedBox(height: ScreenSize.getHeight(context)*0.012,),
          const PlayerTurn(playerName: "Ahmed Tarek",),
          SizedBox(height: ScreenSize.getHeight(context)*0.012,),
          const Expanded(child: BoardContainer()),
        ],
      ),
    );
  }
}