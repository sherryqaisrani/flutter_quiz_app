import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/themes_config/sub_theme_data.dart';

const Color primaryDarkColorDark = Color(0xFF2e3c62);
const Color primaryColorDark = Color(0xFF99ace1);

class AppDarkTheme with SubThemeData {
  buildDarkTheme() {
    final systemDarkTheme = ThemeData.dark();
    return systemDarkTheme;
  }
}
