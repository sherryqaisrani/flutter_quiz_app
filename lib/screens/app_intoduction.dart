import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/widgets/app_circle_button.dart';

class AppIntroScreen extends StatelessWidget {
  const AppIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 60.sp,
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'This is a Study App. You can use it as you want. If you understand how this works. you would be able to scale It.',
              ),
              SizedBox(
                height: 40.h,
              ),
              AppCircleButton(
                  icon: Icon(
                    Icons.arrow_forward,
                  ),
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
