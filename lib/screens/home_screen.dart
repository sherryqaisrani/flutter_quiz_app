import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/quiz_uploader.dart';
import 'package:quiz_app/utils/status_enum.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DataUploader = Get.put(QuizUploader());
    return Scaffold(
      body: Center(
        child: Obx(
          () => DataUploader.dataLoading == DataStatus.completed
              ? Text("Data Uploaded")
              : Text("Uploading"),
        ),
      ),
    );
  }
}
