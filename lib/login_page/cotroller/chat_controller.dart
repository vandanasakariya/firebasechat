import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../store_user.dart';


class ChatController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }





  static final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  static String userId = "";

  Future<void> insertUserTable(UserTable data) async {
    try {
      await firebaseFirestore
          .collection("loginPage")
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .set(
        data.toJson(),
        SetOptions(merge: true),
      )
          .then((value) => userId);

      print("oooooooooooooo${userId}");
    } catch (e) {
      print(e);
    }
  }

}