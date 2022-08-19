import 'package:get/get.dart';
import 'package:quiz_app/screens/app_intoduction.dart';
import 'package:quiz_app/screens/splash_screen.dart';

class appRoutes {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/introduction', page: () => AppIntroScreen()),
  ];
}
