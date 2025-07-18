import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/app/configs/colors.dart';

class AppTheme {
  static final TextStyle lightText = GoogleFonts.poppins(
    color: AppColors.blackTextColor,
  );

  static TextStyle blackTextStyle = GoogleFonts.poppins(
    color: AppColors.blackTextColor,
  );
  static TextStyle whiteTextStyle = GoogleFonts.poppins(
    color: AppColors.whiteColor,
  );
  static TextStyle greyTextStyle = GoogleFonts.poppins(
    color: AppColors.greyTextColor,
  );

  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight black = FontWeight.w900;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,

    // ✅ Updated: removed deprecated `backgroundColor`, used `scaffoldBackgroundColor`

    navigationBarTheme: const NavigationBarThemeData(
      indicatorColor: AppColors.whiteColor,
    ),

    // ✅ Optional: Global button theme fix
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
    ),
  );
}
