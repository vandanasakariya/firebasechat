import 'package:cloud_firestore/cloud_firestore.dart';

class UserTable {

  String? Id;
  String? email;
  String? pass;


  UserTable({

    this.Id,
    this.email,
    this.pass,

  }) {}

  UserTable.fromDocumentSnapshot(
      DocumentSnapshot documentSnapshot,
      ) {
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    Id = data["Id"] ?? '';
    pass = data["pass"] ?? '';
    email = data["email"] ?? '';

  }
  UserTable.fromJson(Map<String, dynamic> json) {
    Id = json["Id"] ?? '';
    email = json["email"] ?? '';
    pass = json["pass"] ?? '';

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = Id;
    data['email'] = email;
    data['pass'] = pass;


    return data;
  }
}