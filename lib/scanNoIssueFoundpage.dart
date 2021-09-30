import 'package:flutter/material.dart';
import 'package:mobileshielding/scanAppPage.dart';

const TWO_PI = 3.14 * 2;

class ScanNoIssueFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = 300.0;

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
              title: Text('Home'),
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          height: 70.0,
                          width: 180.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScanAppPage()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent),
                            child: Text(
                              'Scan App',
                              style:
                              TextStyle(color: Colors.white, fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 70.0,
                        width: 180.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent),
                          child: Text(
                            'Find Threats',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          height: 70.0,
                          width: 180.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrangeAccent),
                            child: Text(
                              'Scan WiFi',
                              style:
                              TextStyle(color: Colors.white, fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 70.0,
                        width: 180.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent),
                          child: Text(
                            'Clean Device',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
