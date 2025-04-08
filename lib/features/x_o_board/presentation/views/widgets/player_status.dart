import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/utlis/screen_size.dart';
import 'package:tic_tac_toe_app/features/x_o_board/data/models/player_model.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/player_details.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_state.dart';

class PlayersStatus extends StatelessWidget {
  const PlayersStatus({super.key, required this.firstPlayer, required this.secondPlayer, required this.isNormalGameMode});
  final PlayerModel firstPlayer;
  final PlayerModel secondPlayer;
  final bool isNormalGameMode;
  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<XOBoardCubit>(context);
    return Container(
      width: ScreenSize.getWidth(context),
      height: ScreenSize.getHeight(context)*0.07,
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.getWidth(context)*0.016),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenSize.getWidth(context)*0.1173),
          color: AppColors.white
      ),
      child: BlocBuilder<XOBoardCubit,XOBoardState>(
        builder: (context, state) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PlayerDetails(
                playerData: firstPlayer,
              ),
            ),
            isNormalGameMode? Expanded(
              child: PlayerDetails(
                playerData: PlayerModel(
                    playerName: "Draw",
                    playerScore: controller.drawScore
                ),
              ),
            ): Padding(
              padding: EdgeInsets.symmetric(vertical: ScreenSize.getHeight(context)*0.017),
              child: const VerticalDivider(
                thickness: 1,
                color: AppColors.blue,
              ),
            ),
            Expanded(
              child: PlayerDetails(
                playerData: secondPlayer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}