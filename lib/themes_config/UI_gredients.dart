import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/themes_config/UI_parameters.dart';
import 'package:quiz_app/themes_config/app_dark_theme.dart';
import 'package:quiz_app/themes_config/app_light_theme.dart';

const gredientLightTheme = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    primaryLightColorLight,
    primaryLightColor,
  ],
);

const gridentDarkTheme = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [primaryDarkColorDark, primaryColorDark],
);

LinearGradient mainAppGrident(BuildContext context) =>
    UIParameters().isDark(context) ? gridentDarkTheme : gredientLightTheme;
