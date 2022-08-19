import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/firebase_services/initial_binding.dart';
import 'package:quiz_app/screens/app_intoduction.dart';
import 'package:quiz_app/screens/data_uploader.dart';
import 'package:quiz_app/screens/splash_screen.dart';
import 'package:quiz_app/themes_config/app_dark_theme.dart';
import 'package:quiz_app/themes_config/app_light_theme.dart';
import 'package:quiz_app/utils/routes.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBinding().dependencies();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: appRoutes.routes,
          title: 'Study App',
          // You can use the library anywhere in the app even in theme
          theme: AppDarkTheme().buildDarkTheme(),
          home: child,
        );
      },
      child: SplashScreen(),
    );
  }
}
