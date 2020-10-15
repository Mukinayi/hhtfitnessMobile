import 'dart:async';

import 'package:HHTFITNESS/screens/LoginPage.dart';
import 'package:HHTFITNESS/utils/Utils.dart';
import 'package:HHTFITNESS/utils/encode_decode_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double screenWidth = 0;
  double screenHeight = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
    print("Encoder "+Utils.base64encoderDecoder("mukinayiseth@gmail.com:0000",Base64.ENCODE));
    print("Decoder "+Utils.base64encoderDecoder("bXVraW5heWlzZXRoQGdtYWlsLmNvbTowMDAw",Base64.DECODE));
  }

  startTimer() async{
    var duration = Duration(seconds: 6);
    return Timer(duration,route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.12),
            ),
            Container(
              width: screenWidth * 0.8,
              child: Center(
                child: Image.asset("assets/images/hhtfitnesslogo.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              child: Center(
                child: Text(Utils.appDetails["welcomemesssage"],style: TextStyle(
                  fontSize: Utils.appFontSize["md"],
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Container(
              child: Center(
                child: Text(Utils.appDetails["waitingmessage"]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              child: Center(
                child: CircularProgressIndicator(backgroundColor: Utils.appColors["colorPrimary"],strokeWidth: 5,),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

