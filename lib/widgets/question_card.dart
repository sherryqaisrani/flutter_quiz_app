import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/models/questionPaper.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({Key? key, required this.model}) : super(key: key);

  QuestionPaper model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                child: ColoredBox(
                  color: Theme.of(context).primaryColor.withOpacity(
                        0.5,
                      ),
                  child: SizedBox(
                    height: Get.width * 0.25,
                    width: Get.width * 0.25,
                    child: CachedNetworkImage(
                      placeholder: (context, url) => Container(
                        child: const Center(child: CircularProgressIndicator()),
                      ),
                      imageUrl: model.imageUrl!,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.h,
                        bottom: 15.h,
                      ),
                      child: Text(
                        model.description,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
