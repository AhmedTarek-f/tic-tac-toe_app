import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
   HomeCubit() : super(HomeInitialState()){
     onInit();
   }
   bool isNormalGameMode = true;
   late final TextEditingController firstPlayerNameController;
   late final TextEditingController secondPlayerNameController;
   final GlobalKey<FormState> playersFormKey = GlobalKey<FormState>();
   AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
   bool startWithX = true;

   void onInit(){
     firstPlayerNameController = TextEditingController();
     secondPlayerNameController = TextEditingController();
   }

   void toggleGameMode(){
     isNormalGameMode = !isNormalGameMode;
     emit(ChangeGameModeState());
   }

   void changeAutoValidateModeToAlways(){
     autoValidateMode = AutovalidateMode.always;
     emit(ChangeAutoValidateModeState());
   }

   void changeAutoValidateModeToDisabled(){
     if(autoValidateMode == AutovalidateMode.always){
       autoValidateMode = AutovalidateMode.disabled;
       emit(ChangeAutoValidateModeState());
     }
   }

   void toggleGameStartWithXORO(){
     startWithX = !startWithX;
     emit(ChangeGameStartWithXOROState());
   }

   @override
  Future<void> close() {
    firstPlayerNameController.dispose();
    secondPlayerNameController.dispose();
    return super.close();
  }
}
