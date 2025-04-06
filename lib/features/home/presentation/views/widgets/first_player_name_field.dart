import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';
import 'package:tic_tac_toe_app/core/utlis/validations.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_cubit.dart';

class FirstPlayerNameField extends StatelessWidget {
  const FirstPlayerNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return TextFormField(
      controller: controller.firstPlayerNameController,
      style: AppFonts.fontSize16Normal,
      decoration: const InputDecoration(
          hintText: "First player name"
      ),
      validator: (value) => Validations.playerNameValidation(playerName: value),
    );
  }
}