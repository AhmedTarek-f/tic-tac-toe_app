import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/first_player_name_field.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/second_player_name_field.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_cubit.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_state.dart';

class PlayersNamesForm extends StatelessWidget {
  const PlayersNamesForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit,HomeState>(
      builder:(context, state) => Form(
          key: controller.playersFormKey,
          autovalidateMode: controller.autoValidateMode,
          child: const Column(
            children: [
              FirstPlayerNameField(),
              SizedBox(height: 16,),
              SecondPlayerNameField(),
            ],
          )
      ),
    );
  }
}