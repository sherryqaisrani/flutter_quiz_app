import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:quiz_app/firebase_services/firebase_reference.dart';

class PaperImageServices extends GetxService {
  Future<String?> getImage(String? imageName) async {
    if (imageName == null) {
      return null;
    }
    try {
      var imageUrlRef = await firebaseStorage
          .child('paper_images')
          .child('${imageName.toLowerCase()}.png');
      var imageUrl = imageUrlRef.getDownloadURL();
      return imageUrl;
    } catch (e) {
      print(e);
    }
  }
}
