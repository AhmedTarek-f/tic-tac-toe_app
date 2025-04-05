import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/utlis/app_themes.dart';
import 'package:tic_tac_toe_app/features/home/presentation/views/home_view.dart';

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: AppThemes.textSelectionThemeData,
        inputDecorationTheme: AppThemes.inputDecorationTheme,
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}