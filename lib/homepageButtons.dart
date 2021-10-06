import 'package:flutter/material.dart';
import 'package:mobileshielding/scanAppPage.dart';
import 'package:mobileshielding/scanThreatsPage.dart';

const TWO_PI = 3.14 * 2;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = 300.0;

    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Color(0xff790507)),
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff790507),
            title: Text('Home'),
          ),
          drawer: new Drawer(
            child: ListView(
              children: [
                new UserAccountsDrawerHeader(
                  accountName: new Text(
                    'Akansha Sen',
                  ),
                  accountEmail: new Text(
                    'akanshasen@msd.com',
                  ),
                  currentAccountPicture: new CircleAvatar(
                    backgroundImage:
                        new AssetImage('assets/MobileShieldingLogo.jpg'),
                  ),
                ),
              ],
            ),
          ),
          //backgroundColor: Color(0xffffffff),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: TweenAnimationBuilder(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(seconds: 5),
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
                                    endAngle: 6.3,
                                    stops: [value, value],
                                    center: Alignment.center,
                                    colors: [
                                      Colors.green,
                                      Colors.pinkAccent.withAlpha(55)
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
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    "    $percentage%" + "\nOptimized",
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
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
                                  builder: (context) => ScanAppPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff741819),
                              shadowColor: Colors.lightBlueAccent,
                              elevation: 20.0,
                            ),
                            child: Text(
                              'Scan Apps',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 70.0,
                        width: 180.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScanThreatsPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff741819),
                            shadowColor: Colors.lightBlueAccent,
                            elevation: 10.0,
                          ),
                          child: Text(
                            'Find Threats',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
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
                              primary: Color(0xff741819),
                              shadowColor: Colors.lightBlueAccent,
                              elevation: 10.0,
                            ),
                            child: Text(
                              'Scan WiFi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
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
                            primary: Color(0xff741819),
                            shadowColor: Colors.lightBlueAccent,
                            elevation: 10.0,
                          ),
                          child: Text(
                            'Clean Device',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      )
                    ],
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
