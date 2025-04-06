import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';

class PlayerTurn extends StatelessWidget {
  const PlayerTurn({
    super.key, required this.playerName,
  });
  final String playerName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: SizedBox(
            child: Text(
              playerName,
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
    );
  }
}