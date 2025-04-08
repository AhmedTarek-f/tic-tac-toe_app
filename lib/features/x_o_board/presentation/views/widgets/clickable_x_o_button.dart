import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_app/core/constants/app_images.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_state.dart';

class ClickableXOButton extends StatelessWidget {
  const ClickableXOButton({super.key, required this.tileIndex});

  final int tileIndex;

  @override
  Widget build(BuildContext context) {
    final boardController = BlocProvider.of<XOBoardCubit>(context);
    return GestureDetector(
      onTap:() {
        boardController.changeBoardTileValue(index: tileIndex);
      },
      child: BlocBuilder<XOBoardCubit,XOBoardState>(
          builder: (context, state) => boardController.boardTiles[tileIndex] == "" ?
          Container(
            color: Colors.transparent,
          ):
          boardController.boardTiles[tileIndex] == "x" ? SvgPicture.asset(
            AppImages.xImage,
            fit: BoxFit.contain,
          ) :
          SvgPicture.asset(
            AppImages.oImage,
            fit: BoxFit.contain,
          ),
      ),
    );
  }
}
























/*
*
*
*
*
*
*
* import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_app/core/constants/app_images.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_cubit.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_state.dart';

class ClickableXOButton extends StatelessWidget {
  const ClickableXOButton({super.key, required this.tileIndex});

  final int tileIndex;

  @override
  Widget build(BuildContext context) {
    final boardController = BlocProvider.of<XOBoardCubit>(context);
    final homeController = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<XOBoardCubit, XOBoardState>(
      builder: (context, state) => GestureDetector(
        onTap: boardController.boardTiles[tileIndex] == "" ? () {
          homeController.startWithX && boardController.checkPlayerTurn() ?
          boardController.changeBoardTileValue(index: tileIndex, value: "x"):
          boardController.changeBoardTileValue(index: tileIndex, value: "o");
        } : null,
        child: boardController.boardTiles[tileIndex] == "" ? const SizedBox
            .shrink() :
        boardController.boardTiles[tileIndex] == "x" ? SvgPicture.asset(
          AppImages.xImage,
          fit: BoxFit.contain,
        ) :
        SvgPicture.asset(
          AppImages.oImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
*
*
*
*
*
*
*
* */