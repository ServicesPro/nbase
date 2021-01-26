import 'package:flutter/foundation.dart';

class MyUser {
  String uid;
  String email;
  String fullName;
  String picture;
  String age;

  MyUser({@required this.uid, @required this.email, this.fullName, this.age, this.picture});

  MyUser.fromMap(Map<String, dynamic> snapshotData)
      : uid = snapshotData['uid'],
        email = snapshotData['email'],
        fullName = snapshotData['fullName'],
        age = snapshotData['age'],
        picture = snapshotData['picture'];

  Map<String, dynamic> toMap() {
    return {
      'uid': this.uid,
      'email': this.email,
      'fullName': this.picture,
      'age': this.age,
    };
  }
}
