import 'package:HHTFITNESS/screens/DashBoard.dart';
import 'package:HHTFITNESS/screens/SubscribePage.dart';
import 'package:HHTFITNESS/utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Utils.appColors["colorPrimary"],
          accentColor: Utils.appColors["colorAccent"],
          primaryColorDark: Utils.appColors["colorPrimary"],
        ),
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {


  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  bool hiddenPassword = true;

  BuildContext context;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    context = context;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    login(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
    }
    return Scaffold(
        backgroundColor: Utils.appColors["colorGreyLight"],
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              width: screenWidth / 2,
              height: screenWidth /2,
              child: Center(
                child: Image.asset("assets/images/hhtfitnesslogo.png"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),

              child: Center(
                child: Text(Utils.appDetails["logindesc"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Utils.appHeaderFontSize["h4"],
                  color: Utils.appColors["colorGreyStrong"],
                ),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              padding: EdgeInsets.only(left: Utils.inputPaddings["all"],right: Utils.inputPaddings["all"]),
              child: TextField(
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Your Email Address",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.email,color: Utils.appColors["colorPrimary"],),
                    onPressed: (){},
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              padding: EdgeInsets.only(left: Utils.inputPaddings["all"],right: Utils.inputPaddings["all"]),
              child: TextField(
                controller: txtPass,
                obscureText: hiddenPassword,
                decoration: InputDecoration(
                    labelText: "Your Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(hiddenPassword ? Icons.visibility_off:Icons.visibility,color: Utils.appColors["colorPrimary"]),
                      onPressed: (){
                        setState(() {
                          hiddenPassword = !hiddenPassword;
                        });
                      },
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),

            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: InkWell(
                      child: FlatButton(
                        child: Text("Forgot your Password ?",style: TextStyle(
                          color: Utils.appColors["colorGreyStrong"],
                        ),),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  Text(" Or "),
                  InkWell(
                    child: FlatButton(
                      child: Text("Create an account for free",style: TextStyle(color: Utils.appColors["colorPrimary"]),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SubscribePage(),
                        ));
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              padding: EdgeInsets.only(left: Utils.inputPaddings["all"],right:Utils.inputPaddings["all"] ),
              child: SizedBox(
                width: screenWidth,
                height: 50,
                child: RaisedButton(
                  child: Text("Login",style: TextStyle(
                    color: Utils.appColors["colorWhite"],
                  ),),
                  color: Utils.appColors["colorPrimary"],
                  onPressed: (){
                      if(txtEmail.text.isEmpty || txtEmail.text==" " || txtEmail.text.length <=0){
                        Utils.toastMessage("Please provide Email Address!", Colors.black, Colors.white, 14);
                      }else{
                        if(txtPass.text.isEmpty || txtPass.text=="" || txtPass.text.length <=0){
                          Utils.toastMessage("Please provide Password!", Colors.black, Colors.white, 14);
                        }else{
                          Utils.toastMessage("All right!", Colors.black, Colors.white, 14);
                          login();
                        }
                      }
                  },
                ),
              ),
            )
          ],
        ),
    );
  }





}

