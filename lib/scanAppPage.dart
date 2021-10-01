import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileshielding/scanNoIssueFoundpage.dart';

class ScanAppPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 0), (){
    //   ElevatedButton(
    //     onPressed: () {
    //       Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //               builder: (context) => ScanAppPage()));
    //     },
    //     style: ElevatedButton.styleFrom(
    //         primary: Colors.deepOrangeAccent),
    //     child: Text(
    //       'Scan App',
    //       style: TextStyle(
    //           color: Colors.white, fontSize: 23),
    //     ),
    //   );
    // });
    Timer _timer;
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
            ),
          ),
        ),
      ),
    );

  }


  Widget _linearProgressIndicator() {

    return LinearProgressIndicator(

      minHeight: 40.0,
      color: Colors.redAccent,
      semanticsLabel: "Scanning Apps",
      backgroundColor: Colors.blueAccent,
    );
  }

}
