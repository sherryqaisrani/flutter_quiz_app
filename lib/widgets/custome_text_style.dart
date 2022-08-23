import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/themes_config/UI_parameters.dart';

TextStyle customeTextStyle(context) => TextStyle(
      color: UIParameters.isDark()
          ? Theme.of(context).textTheme.bodyText1!.color
          : Theme.of(context).primaryColor,
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
    );
