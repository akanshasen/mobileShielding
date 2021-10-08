import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobileshielding/history.dart';

class ReportPage extends StatefulWidget {
  @override
  _reportPageState createState() => new _reportPageState();
}

class _reportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff790507),
      ),
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
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Submit a Report',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400.0,
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          maxLength: 50,
                          decoration: InputDecoration(labelText: 'Your Name'),
                        ),
                        TextFormField(
                          maxLength: 20,
                          decoration:
                              InputDecoration(labelText: 'Phone Number'),
                        ),
                        TextFormField(
                          maxLength: 30,
                          decoration:
                              InputDecoration(labelText: 'Email Address'),
                        ),
                        TextFormField(
                          maxLength: 280,
                          decoration:
                              InputDecoration(labelText: 'Threat Description'),
                        ),
                        TextFormField(
                          maxLength: 30,
                          decoration: InputDecoration(
                              labelText: 'Device (Android/iOS)'),
                        ),
                      ],
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
                            builder: (context) => HistoryPage(),
                          ),
                        );
                        Fluttertoast.showToast(
                          msg: "Report was submitted! Thank you.",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.white,
                          fontSize: 66.0,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(
                          0xff790507,
                        ),
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
