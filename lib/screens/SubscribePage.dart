import 'package:HHTFITNESS/screens/LoginPage.dart';
import 'package:HHTFITNESS/utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class SubscribePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Utils.appColors["colorPrimary"],
        accentColor: Utils.appColors["colorAccent"],
        primaryColorDark: Utils.appColors["colorPrimary"],
      ),
      home: MySubscribePage(),
    );
  }
}

class MySubscribePage extends StatefulWidget {
  @override
  _MySubscribePageState createState() => _MySubscribePageState();
}

class _MySubscribePageState extends State<MySubscribePage> {
  TextEditingController txtfisrtname = TextEditingController();
  TextEditingController txtlastname = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  TextEditingController txtRepeatPass = TextEditingController();
  bool hiddenPassword = true;
  bool hiddenRepeatPassword = true;
  bool readTerms = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: Utils.appColors["colorGreyLight"],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Container(
            width: screenWidth / 3,
            height: screenWidth / 4,
            child: Center(
              child: Image.asset("assets/images/hhtfitnesslogo.png"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(Utils.appDetails["signupdesc"],
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
              controller: txtfisrtname,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Your First Name",
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
              controller: txtlastname,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Your Last Name",
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
            padding: EdgeInsets.only(top: 20),
          ),
          Container(
            padding: EdgeInsets.only(left: Utils.inputPaddings["all"],right: Utils.inputPaddings["all"]),
            child: TextField(
              controller: txtRepeatPass,
              obscureText: hiddenPassword,
              decoration: InputDecoration(
                  labelText: "Repeat your password",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(hiddenRepeatPassword ? Icons.visibility_off:Icons.visibility,color: Utils.appColors["colorPrimary"]),
                    onPressed: (){
                      setState(() {
                        hiddenRepeatPassword = !hiddenRepeatPassword;
                      });
                    },
                  )
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            padding: EdgeInsets.only(left: 6),
            child: Row(
              children: [
                Checkbox(
                  value:readTerms,
                  onChanged: (bool values){
                    setState(() {
                      if(values==true){
                        readTerms = true;
                        //Utils.toastMessage("You checked the liability waiver", Colors.black, Colors.white, 14.0);
                      }else{
                        readTerms = false;
                        //Utils.toastMessage("You unchecked the liability waiver", Colors.black, Colors.white, 14.0);
                      }
                    });
                  },
                ),
                Text("Accept conditions & terms"),

              ],
            ),
            ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  child: Text("Do you want to login ? click here"),
                  onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()))
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
                child: Text("Create an account",style: TextStyle(
                  color: Utils.appColors["colorWhite"],
                ),),
                color: Utils.appColors["colorPrimary"],
                onPressed: (){
                  login(txtEmail.text, txtPass.text);
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
          )
        ],
      ),
    );

  }
  void login(String email,String password){
    if(email.isEmpty || password.isEmpty){
      Utils.toastMessage("Please fill in Username and Password", Colors.black, Colors.white, 16.2);
    }
  }
}

