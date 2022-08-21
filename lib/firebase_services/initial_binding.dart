import 'package:get/get.dart';
import 'package:quiz_app/controllers/auth_controller.dart';
import 'package:quiz_app/controllers/theme_controller.dart';
import 'package:quiz_app/firebase_services/paper_images_service.dart';

class InitialBinding implements Bindings {
  @override
  dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    Get.put(PaperImageServices());
  }
}
