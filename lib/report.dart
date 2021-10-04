import 'package:flutter/material.dart';
import 'homepageButtons.dart';

class ReportPage extends StatefulWidget {
  @override
  _reportPageState createState() => new _reportPageState();
}

class _reportPageState extends State<ReportPage> {
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
            title: Text('Report Threat'),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Submit a Report',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400.0,
                  padding: EdgeInsets.all(20.0),
                  child: TextFormField(
                    maxLength: 30,
                    decoration: InputDecoration(labelText: 'Your Name'),
                  ),
                ),

                Container(
                  height: 50.0,
                  width: 250.0,
                  margin: EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReportPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff790507),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
