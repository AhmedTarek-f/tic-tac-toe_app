import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/features/x_o_board/data/models/player_model.dart';

class PlayerDetails extends StatelessWidget {
  const PlayerDetails({super.key, required this.playerData});
  final PlayerModel playerData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          playerData.playerName,
          style: AppFonts.fontSize14Normal,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Score: ",
              style: AppFonts.fontSize14Normal,
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  "${playerData.playerScore}",
                  style: AppFonts.fontSize14Normal,
                ),
              ),
            ),
          ],
        )

      ],
    );
  }
}