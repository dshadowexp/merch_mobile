import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppData {
  FirebaseFirestore _firestore;
  static Map<String, dynamic> categoriesData = {};
  static String apiUrl = "https://us-central1-winie-merch.cloudfunctions.net/";
  AppData(this._firestore);

  Future<Map<String, dynamic>> getDataFromDatabase(String docName) async {
    QuerySnapshot querySnapshot = await _firestore.collection(docName).get();
    categoriesData = Map();
    for (int i = 0; i < querySnapshot.size; i++) {
      var a = querySnapshot.docs[i];
      categoriesData[a.id] = a.data();
    }
    categoriesData['others'] = {
      "color": true,
      "description": "",
      "sizes": false,
    };

    return categoriesData;
  }

  Future<Map<String, dynamic>> getDataFromDatabasePerDocument(
      String collection, String docName) async {
    DocumentSnapshot querySnapshot =
        await _firestore.collection(collection).doc(docName).get();
    Map<String, dynamic> dataMap = Map();
    if (querySnapshot.exists) {
      dataMap = querySnapshot.data() as Map<String, dynamic>;
    }
    return dataMap;
  }
}
