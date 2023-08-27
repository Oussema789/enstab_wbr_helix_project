import 'package:firebase_storage/firebase_storage.dart';

List<String> generateImageList(
    String basePath, String imageNameFormat, int count) {
  List<String> imageList = [];
  for (int i = 1; i <= count; i++) {
    final imageName = '$imageNameFormat$i.jpg';
    imageList.add('$basePath/$imageName');
  }
  return imageList;
}

Future<List<String>> generateImageListFromFirebase(
    String basePath, String imageNameFormat, int count) async {
  List<String> imageList = [];

  for (int i = 1; i <= count; i++) {
    final imageName = '$imageNameFormat$i.jpg';
    final imageUrl = await FirebaseStorage.instance
        .ref('$basePath/$imageName')
        .getDownloadURL();
    imageList.add(imageUrl);
  }

  return imageList;
}
