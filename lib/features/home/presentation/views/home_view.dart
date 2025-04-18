import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views_model/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      child:  Scaffold(
        body: BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
          child: const HomeViewBody(),
        ),
      ),
    );
  }
}
