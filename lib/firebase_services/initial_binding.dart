import 'package:get/get.dart';
import 'package:quiz_app/controllers/auth_controller.dart';

class InitialBinding implements Bindings {
  @override
  dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}
