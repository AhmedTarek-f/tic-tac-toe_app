import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/clickable_x_o_button.dart';

class FirstBoardRow extends StatelessWidget {
  const FirstBoardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ClickableXOButton(tileIndex:0)),
        VerticalDivider(color: AppColors.black,),
        Expanded(child: ClickableXOButton(tileIndex:1)),
        VerticalDivider(color: AppColors.black,),
        Expanded(child: ClickableXOButton(tileIndex:2)),
      ],
    );
  }
}