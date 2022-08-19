import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  initAuth() async {
    await Future.delayed(const Duration(seconds: 2));
    navigationToIntroduction();
  }

  navigationToIntroduction() {
    Get.offAllNamed('/introduction');
  }
}
