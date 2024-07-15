part of '_index.dart';

final x1FbFireStore = RM.inject(() => FbFireStore(), debugPrintWhenNotifiedPreMessage: '');

class FbFireStore {
  final instance = FirebaseFirestore.instance;

  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String collProduct) async {
    final result = await instance.collection(collProduct).get();

    return result;
  }

  Future<void> createDocument(String collProduct, String docId, Map<String, dynamic> data) async {
    await instance.collection(collProduct).doc(docId).set(data);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> readProductDetail(String collProduct, String docId) async {
    final result = await instance.collection(collProduct).doc(docId).get();

    return result;
  }

  Future<void> deleteDocument(String collProduct, String docId) async {
    await instance.collection(collProduct).doc(docId).delete();
  }

  Future<void> updateDocumment(
    String collProduct,
    String docId,
    Map<String, dynamic> map,
  ) async {
    await FirebaseFirestore.instance.collection(collProduct).doc(docId).set(RouteMap.data);
  }
}
