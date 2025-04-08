import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/clickable_x_o_button.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';

class SecondBoardRow extends StatelessWidget {
  const SecondBoardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ClickableXOButton(tileIndex: 3,)),
        VerticalDivider(color: AppColors.black,),
        Expanded(child: ClickableXOButton(tileIndex: 4,)),
        VerticalDivider(color: AppColors.black,),
        Expanded(child: ClickableXOButton(tileIndex: 5,)),
      ],
    );
  }
}