import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part '_index.dart';

final x1FbFireStore = RM.inject(() => FbFireStore(), debugPrintWhenNotifiedPreMessage: '');

class FbFireStore {
  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String collProduct) async {
    final result = await FirebaseFirestore.instance.collection(collProduct).get();

    return result;
  }

  Future<void> createDocumernt(String collProduct, String docId, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collProduct).doc(docId).set(data);
  }
}
