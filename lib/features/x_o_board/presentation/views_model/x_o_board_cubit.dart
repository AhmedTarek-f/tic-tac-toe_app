import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/features/x_o_board/data/models/player_model.dart';
import 'package:tic_tac_toe_app/features/x_o_board/presentation/views_model/x_o_board_state.dart';

class XOBoardCubit extends Cubit<XOBoardState> {
  XOBoardCubit({required bool isStartWithX, required PlayerModel firstPlayerData,required PlayerModel secondPlayerData, required bool isNormalGameMode}) :
        startWithX = isStartWithX,
        isFirstPlayerStartWithX = isStartWithX,
        firstPlayer = firstPlayerData,
        secondPlayer = secondPlayerData,
        isNormalMode = isNormalGameMode,
        super(XOBoardInitial());

  final bool isNormalMode;
  int boardTilesCounter =0;
  bool isDraw = false;
  int drawScore = 0;
  bool startWithX;
  final bool isFirstPlayerStartWithX;
  PlayerModel firstPlayer;
  PlayerModel secondPlayer;
  String? winnerPlayerName;
  List<String> boardTiles = [
    "","","",
    "","","",
    "","",""
  ];


  bool checkPlayerTurn(){
    if(boardTilesCounter%2 == 0){
      return true;
    }
    return false;
  }

  void changeBoardTileValue({required int index}){
    if(boardTiles[index] == ""){
      if(startWithX){
        boardTiles[index] = "x";
        startWithX = !startWithX;
        isNormalMode?
        checkNormalGameModeWinner(sign: "x"):
        checkOneWinnerGameMode(sign: "x",index: index);
        emit(ChangeBoardTileState());
      }
      else{
        boardTiles[index] = "o";
        startWithX = !startWithX;
        isNormalMode?
        checkNormalGameModeWinner(sign: "o"):
        checkOneWinnerGameMode(sign: "o",index: index);
        emit(ChangeBoardTileState());
      }
    }
  }

  String checkWinnerPlayerName({required String sign}){
    if(isFirstPlayerStartWithX && sign == "x"){
      firstPlayer.playerScore++;
      return firstPlayer.playerName;
    }
    else if(!isFirstPlayerStartWithX && sign == "o"){
      firstPlayer.playerScore++;
      return firstPlayer.playerName;
    }
    else{
      secondPlayer.playerScore++;
      return secondPlayer.playerName;
    }
  }

  void handleOnePlayerWinnerSelectionIndexes({required String sign,required int index}){
    if(isFirstPlayerStartWithX && sign == "x"){
      boardTilesCounter++;
      firstPlayer.oneWinnerGameSignsIndexes!.add(index);
      if(firstPlayer.oneWinnerGameSignsIndexes!.length==4){
        final int removedIndex = firstPlayer.oneWinnerGameSignsIndexes!.first;
        boardTiles[removedIndex] = "";
        firstPlayer.oneWinnerGameSignsIndexes!.removeAt(0);
        emit(ChangeBoardTileState());
      }
    }
    else if(!isFirstPlayerStartWithX && sign == "o"){
      boardTilesCounter++;
      firstPlayer.oneWinnerGameSignsIndexes!.add(index);
      if(firstPlayer.oneWinnerGameSignsIndexes!.length==4){
        final int removedIndex = firstPlayer.oneWinnerGameSignsIndexes!.first;
        boardTiles[removedIndex] = "";
        firstPlayer.oneWinnerGameSignsIndexes!.removeAt(0);
        emit(ChangeBoardTileState());
      }
    }
    else{
      boardTilesCounter++;
      secondPlayer.oneWinnerGameSignsIndexes!.add(index);
      if(secondPlayer.oneWinnerGameSignsIndexes!.length==4){
        final int removedIndex = secondPlayer.oneWinnerGameSignsIndexes!.first;
        boardTiles[removedIndex] = "";
        secondPlayer.oneWinnerGameSignsIndexes!.removeAt(0);
        emit(ChangeBoardTileState());
      }
    }
  }

  void checkNormalGameModeWinner({required String sign}){
    if(boardTiles[0]==sign && boardTiles[1]==sign && boardTiles[2] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[3]==sign && boardTiles[4]==sign && boardTiles[5] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[6]==sign && boardTiles[7]==sign && boardTiles[8] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[0]==sign && boardTiles[3]==sign && boardTiles[6] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[1]==sign && boardTiles[4]==sign && boardTiles[7] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[2]==sign && boardTiles[5]==sign && boardTiles[8] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[0]==sign && boardTiles[4]==sign && boardTiles[8] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[2]==sign && boardTiles[4]==sign && boardTiles[6] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else{
      boardTilesCounter++;
      if(boardTilesCounter == 9){
        drawScore ++;
        isDraw = true;
      }
    }
  }

  void startNewNormalGame(){
    boardTilesCounter = 0;
    startWithX = isFirstPlayerStartWithX;
    winnerPlayerName = null;
    isDraw = false;
    resetBoard();
  }

  void checkOneWinnerGameMode({required String sign,required int index}){
    if(boardTiles[0]==sign && boardTiles[1]==sign && boardTiles[2] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[3]==sign && boardTiles[4]==sign && boardTiles[5] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[6]==sign && boardTiles[7]==sign && boardTiles[8] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[0]==sign && boardTiles[3]==sign && boardTiles[6] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[1]==sign && boardTiles[4]==sign && boardTiles[7] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[2]==sign && boardTiles[5]==sign && boardTiles[8] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[0]==sign && boardTiles[4]==sign && boardTiles[8] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else if(boardTiles[2]==sign && boardTiles[4]==sign && boardTiles[6] == sign){
      winnerPlayerName = checkWinnerPlayerName(sign: sign);
    }
    else{
      handleOnePlayerWinnerSelectionIndexes(sign: sign,index: index);
    }
  }

  void startOneWinnerGame(){
    boardTilesCounter = 0;
    startWithX = isFirstPlayerStartWithX;
    winnerPlayerName = null;
    firstPlayer.oneWinnerGameSignsIndexes!.clear();
    secondPlayer.oneWinnerGameSignsIndexes!.clear();
    resetBoard();
  }


  void resetBoard(){
    boardTiles = [
      "","","",
      "","","",
      "","",""
    ];
    emit(ResetBoardTileState());
  }
}
