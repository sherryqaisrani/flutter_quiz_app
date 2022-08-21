import 'package:get/get.dart';
import 'package:quiz_app/controllers/paper_image_controller.dart';
import 'package:quiz_app/screens/app_intoduction.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/splash_screen.dart';

class appRoutes {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/introduction', page: () => AppIntroScreen()),
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
      binding: BindingsBuilder(
        () {
          Get.put(
            PaperImageController(),
          );
        },
      ),
    ),
  ];
}
