import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobileshielding/report.dart';

class HistoryPage extends StatefulWidget {
  @override
  _historyPageState createState() => new _historyPageState();
}

class _historyPageState extends State<HistoryPage> {
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
              icon: Icon(Icons.arrow_back_sharp),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReportPage(),
                  ),
                );
              },
            ),
            backgroundColor: Color(0xff790507),
            title: Text('History of Threats and Reports'),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                  ),
                  new ListTile(
                    title: new Text(
                      'Reported a Threat on 8th October, 2021 at 8:06pm.\n',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Divider(
                    color: Color(0xff242323),
                    thickness: 3.0,
                  ),
                  new ListTile(
                    title: new Text(
                      'Major threat found in scan on 8th October, 2021 at 7:45pm. Source of threat: Outlook\n',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Divider(
                    color: Color(0xff242323),
                    thickness: 3.0,
                  ),
                  new ListTile(
                    title: new Text(
                      'Minor threat found on 5th October, 2021 at 10.34am. Source of threat: Unofficial Webpage\n',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Divider(
                    color: Color(0xff242323),
                    thickness: 3.0,
                  ),
                  new ListTile(
                    title: new Text(
                      'No threats found on 1st October, 2021 at 12.09pm.\n',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Divider(
                    color: Color(0xff242323),
                    thickness: 3.0,
                  ),
                  new ListTile(
                    title: new Text(
                      'No threats found on 30th September, 2021 at 8:06pm.\n',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Divider(
                    color: Color(0xff242323),
                    thickness: 3.0,
                  ),
                  new ListTile(
                    title: new Text(
                      'Minor threat found on 26th September, 2021 at 9.54am. Source of threat: Unofficial Webpage\n',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Divider(
                    color: Color(0xff242323),
                    thickness: 3.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 250.0,
                    margin: EdgeInsets.only(
                      top: 5.0,
                      bottom: 15.0,
                    ),
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
                        padding: EdgeInsets.all(15.0),
                        primary: Color(0xff741819),
                        shadowColor: Colors.lightBlueAccent,
                        elevation: 10.0,
                      ),
                      child: Text(
                        "Submit another Report",
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
