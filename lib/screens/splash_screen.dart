import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/themes_config/UI_gredients.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: mainAppGrident(context),
        ),
        alignment: Alignment.center,
        child: Image.asset(
          width: 200.w,
          height: 200.h,
          'assets/images/app_splash_logo.png',
        ),
      ),
    );
  }
}
