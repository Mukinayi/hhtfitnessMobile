import 'dart:convert';
import 'package:HHTFITNESS/utils/encode_decode_enum.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static const Map<String,String> appDetails = {
    "appname":"HHTFITNESS",
    "appdescription":"An application online Sport with a dedicated coach",
    "welcomemesssage":"Welcome on HHTFITNESS App!",
    "waitingmessage":"Please Wait while we are gathering everything for you...",
    "logintitle":"Login",
    "logindesc":"Please sign in before using this App",
    "signupdesc":"Please use this form to create your free account"
  };

  static const Map<String,Color> appColors = {
      "colorPrimary": Color(0xFF015682),
      "colorAccent": Colors.deepOrange,
      "colorWhite": Color(0xFFFFFFFF),
      "colorBlack": Color(0xFF000000),
      "colorTransparent": Color(0xFF00000000),
      "colorGreyLight": Color(0xFFECEFF1),
      "colorGreyStrong": Color(0xFF455A64),
  };

  static const Map<String,double> appFontSize = {
      "xl":30,
      "md":18,
      "sm":12,
      "xs":8
  };

  static const Map<String,double> appHeaderFontSize = {
      "h6":8,
      "h5":12,
      "h4":17,
      "h3":22,
      "h2":27,
      "h1":32
  };

  static const Map<String,double> appParagrapheFontSize = {
    "p":14
  };

  static String conditions = ''' 
    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
  ''';

  static const Map<String,double> inputPaddings = {
      "all":20,

  };


  static void toastMessage(String message,Color background, Color color, double fontsize){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: background,
        textColor: color,
        fontSize: fontsize
    );
  }

  static Future<void> displayDialog(BuildContext context, String title, Widget contents,) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text(title)),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[

              ],
            ),
          ),
          actions: <Widget>[
            InkWell(
              child: Text('Approve'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            InkWell(
              child: Text('Decline'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static String base64encoderDecoder(String data, Base64 enu){
    if(enu == Base64.ENCODE){
      return EncryptUtil.encodeBase64(data);
    }else{
      return EncryptUtil.decodeBase64(data);
    }
  }
}