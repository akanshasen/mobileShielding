import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobileshielding/homepageButtons.dart';

void main() => runApp(ScanAppPage());

class ScanAppPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff790507),
      ),
      home: ScanAPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScanAPage extends StatefulWidget {
  @override
  _scanThreatsPage createState() => _scanThreatsPage();
}

class _scanThreatsPage extends State<ScanAPage> {
  final size = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff790507),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_sharp),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                Container(
                  width: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                        //padding: EdgeInsets.only(left: 90.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Scanning for App Collusion',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 70.0), //height of the white space
          Container(
            padding: EdgeInsets.only(top: 20.0),
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Color(0xff2e2e2f),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                TweenAnimationBuilder(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: Duration(seconds: 4),
                  builder: (context, double value, child) {
                    int percentage = (value * 100).ceil();
                    return Container(
                      width: size,
                      height: size,
                      child: Stack(
                        children: [
                          ShaderMask(
                            shaderCallback: (rect) {
                              return SweepGradient(
                                  startAngle: 0.0,
                                  endAngle: TWO_PI,
                                  stops: [
                                    value,
                                    value,
                                  ],
                                  colors: [
                                    Colors.green,
                                    Colors.pink.withAlpha(55)
                                  ]).createShader(rect);
                            },
                            child: Container(
                              width: size,
                              height: size,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: size - 40,
                              height: size - 40,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "$percentage%" + "\nSafe",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  height: size,
                  width: 280.0,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScanAppPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15.0),
                          primary: Color(0xff741819),
                          shadowColor: Colors.lightBlueAccent,
                          elevation: 10.0,
                        ),
                        child: Text(
                          'Rescan Apps',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 25.0,
                            ),
                            child: Text(
                              'No App Collusions Found!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
