part of '_index.dart';

final x1Storage = RM.inject(() => FbStorage(), debugPrintWhenNotifiedPreMessage: '');

class FbStorage {
  Future<String> uploadImage({required XFile? pickedFile, required String ref}) async {
    String imageUrl = '';

    if (pickedFile != null) {
      final readAsBytes = await pickedFile.readAsBytes();
      final snapshot = await FirebaseStorage.instance.ref(ref).putData(
            readAsBytes,
            SettableMetadata(contentType: pickedFile.mimeType),
          );

      imageUrl = await snapshot.ref.getDownloadURL();
    }

    return imageUrl;
  }

  Future<void> deleteImage(String ref) async {
    await FirebaseStorage.instance.ref(ref).delete();
  }
}
