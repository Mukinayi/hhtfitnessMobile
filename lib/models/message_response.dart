import 'dart:convert';

import 'package:HHTFITNESS/models/user.dart';


MessageResponse messageResponseFromJson(String str) => MessageResponse.fromJson(json.decode(str));

class MessageResponse {
  MessageResponse({
    this.resultcode,
    this.message,
    this.responsedate,
    this.requestedroute,
    this.object,
  });

  String resultcode;
  String message;
  DateTime responsedate;
  String requestedroute;
  dynamic object;

  factory MessageResponse.fromJson(Map<String, dynamic> json) => MessageResponse(
    resultcode: json["resultcode"],
    message: json["message"],
    responsedate: DateTime.parse(json["responsedate"]),
    requestedroute: json["requestedroute"],
    object: User.fromJson(json["object"]),
  );

}