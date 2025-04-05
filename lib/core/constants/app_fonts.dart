import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_app/core/constants/app_colors.dart';

abstract final class AppFonts{
  static TextStyle fontSize40Black = GoogleFonts.montserrat(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: AppColors.white,
  );
  static TextStyle fontSize24Medium = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static TextStyle fontSize16Normal = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static TextStyle fontSize36Bold = GoogleFonts.montserrat(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
}