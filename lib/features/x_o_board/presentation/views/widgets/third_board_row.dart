import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/clickable_x_o_button.dart';

class ThirdBoardRow extends StatelessWidget {
  const ThirdBoardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ClickableXOButton(xOrO: "x",)),
        VerticalDivider(color: AppColors.black,),
        Expanded(child: ClickableXOButton(xOrO: "x",)),
        VerticalDivider(color: AppColors.black,),
        Expanded(child: ClickableXOButton(xOrO: "o",)),
      ],
    );
  }
}