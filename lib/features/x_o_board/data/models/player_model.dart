class PlayerModel{
  PlayerModel({
    required this.playerName,
    required this.playerScore,
    this.oneWinnerGameSignsIndexes,
  });
  final String playerName;
  int playerScore;
  List<int>? oneWinnerGameSignsIndexes;
}