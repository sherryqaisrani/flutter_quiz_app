import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quiz_app/firebase_services/firebase_reference.dart';
import 'package:quiz_app/models/questionPaper.dart';

class QuizUploader extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    uploadData();
    super.onReady();
  }

  void uploadData() async {
    final firebaseFirestore = FirebaseFirestore.instance;
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
    }

    var batch = firebaseFirestore.batch();

    for (var paper in list) {
      batch.set(questionPaperRef.doc(paper.id), {
        "title": paper.title,
        "imageUrl": paper.imageUrl,
        "description": paper.description,
        "timesecond": paper.timesecond,
        "questionsCount": paper.questions == null ? 0 : paper.questions!.length,
      });

      for (var question in paper.questions!) {
        final questionDoc =
            questionRef(paperId: paper.id, questionId: question.id);
        batch.set(questionDoc, {
          "question": question.question,
          "correct_answer": question.correctAnswer,
        });

        for (var answer in question.answers) {
          batch.set(questionDoc.collection("Answers").doc(answer.identifier), {
            "identifier": answer.identifier,
            "Answer": answer.answer,
          });
        }
      }
    }
    await batch.commit();
  }
}
