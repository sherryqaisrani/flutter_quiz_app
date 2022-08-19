import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/themes_config/app_light_theme.dart';

mixin SubThemeData {
  TextTheme getTextTheme() {
    return GoogleFonts.quicksandTextTheme(
      const TextTheme(
        bodyText1: TextStyle(
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  IconThemeData getIconTheme() {
    return const IconThemeData(
      color: surfaceIcon,
      size: 22,
    );
  }
}
