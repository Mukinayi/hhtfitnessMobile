import 'package:HHTFITNESS/utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "My app",
        home: MyDashboard(),
    );
  }
}

class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
            color: Utils.appColors["colorPrimary"],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HHTService(Icon(Icons.directions_bike,color: Colors.white,)),
                HHTService(Icon(Icons.fitness_center,color: Colors.white,)),
                HHTService(Icon(Icons.directions_walk,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
                HHTService(Icon(Icons.directions_run,color: Colors.white,)),
              ],
            ),
          ),
        )
    );
  }

  Widget HHTService(Icon icon){
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width:  80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(40),
            ),

          alignment: Alignment.center,
          child: IconButton(
            icon: icon,
            iconSize: 35,
          )
        ),
      ),
    );
  }
}

