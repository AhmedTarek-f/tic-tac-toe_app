sealed class Validations{
  static String? playerNameValidation({required String? playerName}){
    if((playerName?.isEmpty ?? true) || playerName?.trim() == ""){
      return "Player name is required";
    }
    else{
      return null;
    }
  }
}