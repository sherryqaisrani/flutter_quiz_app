import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/themes_config/app_dark_theme.dart';
import 'package:quiz_app/themes_config/app_light_theme.dart';

class ThemeController extends GetxController {
  late ThemeData _darkThemeData;
  late ThemeData _lightThemeData;
  @override
  void onInit() {
    initializedThemeData();
    super.onInit();
  }

  initializedThemeData() {
    _darkThemeData = AppDarkTheme().buildDarkTheme();
    _lightThemeData = AppLightTheme().buildLightTheme();
  }

  ThemeData get lightThemeData => _lightThemeData;
  ThemeData get darkThemeData => _darkThemeData;
}
