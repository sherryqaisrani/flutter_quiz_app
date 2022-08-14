import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quiz_app/models/questionPaper.dart';

class QuizUploader extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    uploadData();
    super.onReady();
  }

  void uploadData() async {
    final menifestJson = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");

    Map<String, dynamic> manifestPath = json.decode(menifestJson);

    final paperInAsset = manifestPath.keys
        .where((String key) =>
            key.startsWith("assets/db/") && key.endsWith('.json'))
        .toList();

    print(paperInAsset);

    List<QuestionPaper> list = [];

    for (var paper in paperInAsset) {
      final String paperData = await rootBundle.loadString(paper);
      list.add(QuestionPaper.fromJson(json.decode(paperData)));
      print(paperData);
    }

    print(list[0]);
  }
}
