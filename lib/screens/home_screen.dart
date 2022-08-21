import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/paper_image_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaperImageController controller = Get.find();
    return Scaffold(
        body: Obx(
      () => ListView.separated(
        itemBuilder: ((context, index) => ClipRRect(
              child: SizedBox(
                height: 200.h,
                width: 200.w,
                child: FadeInImage(
                  placeholder: const AssetImage(
                    'assets/images/physics.png',
                  ),
                  image: NetworkImage(
                    controller.allImagePath[index],
                  ),
                ),
              ),
            )),
        separatorBuilder: ((context, index) => SizedBox(
              height: 20.h,
            )),
        itemCount: controller.allImagePath.length,
      ),
    ));
  }
}
