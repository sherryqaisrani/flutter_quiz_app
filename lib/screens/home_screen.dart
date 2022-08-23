import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/paper_image_controller.dart';
import 'package:quiz_app/themes_config/UI_parameters.dart';
import 'package:quiz_app/widgets/question_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaperImageController controller = Get.find();
    return Scaffold(
        body: Obx(
      () => ListView.separated(
        padding: UIParameters.mobileScreenPadding,
        itemBuilder: ((context, index) => QuestionCard(
              model: controller.allPaper[index],
            )),
        separatorBuilder: ((context, index) => SizedBox(
              height: 20.h,
            )),
        itemCount: controller.allPaper.length,
      ),
    ));
  }
}
