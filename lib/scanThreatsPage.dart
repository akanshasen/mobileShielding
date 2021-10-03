import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobileshielding/homepageButtons.dart';

void main() => runApp(ScanThreatsPage());

class ScanThreatsPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScanTPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScanTPage extends StatefulWidget {
  @override
  _scanThreatsPage createState() => _scanThreatsPage();
}

class _scanThreatsPage extends State<ScanTPage> {
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
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
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
                  'Scanning for Threats',
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
              color: Colors.white,
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
                    int percentage = (value * 27).ceil();
                    return Container(
                      width: size,
                      height: size,
                      child: Stack(
                        children: [
                          ShaderMask(
                            shaderCallback: (rect) {
                              return SweepGradient(
                                  startAngle: 0.0,
                                  endAngle: 1.73,
                                  stops: [
                                    value,
                                    value,
                                  ],
                                  colors: [
                                    Colors.green,
                                    Colors.red.withAlpha(55)
                                  ]).createShader(rect);
                            },
                            child: Container(
                              width: size,
                              height: size,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
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
                                  style: TextStyle(fontSize: 30),
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
                                  builder: (context) => ScanThreatsPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent),
                        child: Text(
                          'Rescan Threats',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 80.0),
                        width: 250.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScanThreatsPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent),
                          child: Text(
                            'Report Threat',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
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
