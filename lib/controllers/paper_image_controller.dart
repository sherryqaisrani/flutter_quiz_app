import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:quiz_app/firebase_services/firebase_reference.dart';
import 'package:quiz_app/firebase_services/paper_images_service.dart';
import 'package:quiz_app/models/questionPaper.dart';

class PaperImageController extends GetxController {
  final allImagePath = <String>[].obs;
  final allPaper = <QuestionPaper>[].obs;
  @override
  void onReady() {
    getAllImage();
    super.onReady();
  }

  getAllImage() async {
    QuerySnapshot<Map<String, dynamic>> data = await questionPaperRef.get();

    final paperList =
        data.docs.map((paper) => QuestionPaper.dataSanpShot(paper)).toList();

    allPaper.assignAll(paperList);

    List<String> imageName = ['biology', 'english', 'physics'];
    try {
      for (var paper in paperList) {
        var imagePath =
            await Get.find<PaperImageServices>().getImage(paper.title);

        paper.imageUrl = imagePath!;
      }

      allPaper.assignAll(paperList);
    } catch (e) {
      print(e.toString());
    }
  }
}
