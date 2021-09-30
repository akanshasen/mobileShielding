import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobileshielding/scanNoIssueFoundpage.dart';

class ScanAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              backgroundColor: Color(0xff790507),
              title: Text('Scan Apps'),
            ),
            body: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text("Scanning Apps", style: TextStyle(fontSize: 30)),
                    SizedBox(
                      height: 40.0,
                      child: Center(
                        child: _linearProgressIndicator(),
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }

  Widget _linearProgressIndicator() {
    return LinearProgressIndicator(
      minHeight: 40.0,
      color: Colors.red,
      semanticsLabel: "Scanning Apps",
      backgroundColor: Colors.green,
    );
  }

  // void initState() {
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.pushReplacement(context,
  //         MaterialPageRoute(builder: (context) => ScanNoIssueFound()));
  //   });
  //   super.initState();
  // }
}
