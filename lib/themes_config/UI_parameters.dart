import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIParameters {
  bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
