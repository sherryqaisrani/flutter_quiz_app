import 'package:flutter/material.dart';
import 'package:quiz_app/themes_config/sub_theme_data.dart';

const Color primaryLightColorLight = Color(0xFF3ac3cb);
const Color primaryLightColor = Color(0xFFf85187);
const Color surfaceIcon = Colors.white;
const Color mainTextColor = Color.fromARGB(255, 40, 40, 40);

class AppLightTheme with SubThemeData {
  buildLightTheme() {
    final systemLightTheme = ThemeData.light();

    return systemLightTheme.copyWith(
      textTheme: getTextTheme().apply(
        bodyColor: mainTextColor,
        displayColor: mainTextColor,
      ),
      iconTheme: getIconTheme(),
    );
  }
}
