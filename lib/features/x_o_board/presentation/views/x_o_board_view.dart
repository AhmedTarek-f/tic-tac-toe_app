import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views/widgets/x_o_board_view_body.dart';

class XOBoardView extends StatelessWidget {
  const XOBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                AppColors.cyan,
                AppColors.blue,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
      child: const Scaffold(
        body: SafeArea(child: XOBoardViewBody()),
      ),
    );
  }
}
