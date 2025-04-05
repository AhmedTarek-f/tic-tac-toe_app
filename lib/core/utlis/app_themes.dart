import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';

abstract final class AppThemes{
  
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
    border: outlineInputBorder(),
    hintStyle: AppFonts.fontSize16Normal.copyWith(color: AppColors.white.withValues(alpha: 0.6)),
    contentPadding: const EdgeInsets.all(12),
  );
  
  static TextSelectionThemeData textSelectionThemeData = TextSelectionThemeData(
    cursorColor: AppColors.cyan,
    selectionHandleColor: AppColors.blue,
    selectionColor: AppColors.cyan.withValues(alpha: 0.6),
  );

  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(width: 1,color: AppColors.cyan),
  );
  }
}