// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  final String? docId;
  final String? name;
  final String? email;
  final int? cnic;
  final String? phone;

  UserModel({
    this.docId,
    this.name,
    this.email,
    this.cnic,
    this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    docId: json["docID"],
    name: json["name"],
    email: json["email"],
    cnic: json["cnic"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "docID": docId,
    "name": name,
    "email": email,
    "cnic": cnic,
    "phone": phone,
  };
}
