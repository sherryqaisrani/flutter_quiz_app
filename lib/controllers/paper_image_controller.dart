import 'package:get/get.dart';
import 'package:quiz_app/firebase_services/paper_images_service.dart';

class PaperImageController extends GetxController {
  final allImagePath = <String>[].obs;
  @override
  void onReady() {
    getAllImage();
    super.onReady();
  }

  getAllImage() async {
    List<String> imageName = ['biology', 'english', 'physics'];
    try {
      for (var img in imageName) {
        var imagePath = await Get.find<PaperImageServices>().getImage(img);

        allImagePath.add(imagePath!);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
