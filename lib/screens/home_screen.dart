import 'package:cached_network_image/cached_network_image.dart';
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
                child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  imageUrl: controller.allPaper[index].imageUrl!,
                ),
              ),
            )),
        separatorBuilder: ((context, index) => SizedBox(
              height: 20.h,
            )),
        itemCount: controller.allPaper.length,
      ),
    ));
  }
}
