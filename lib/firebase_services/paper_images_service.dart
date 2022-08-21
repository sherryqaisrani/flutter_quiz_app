import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

Reference get firebaseStorage => FirebaseStorage.instance.ref();

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
