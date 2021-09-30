import 'package:flutter/material.dart';
import 'homepageButtons.dart';

class LoginPage extends StatefulWidget {
  @override
  _MsLoginPageState createState() => new _MsLoginPageState();
}

class _MsLoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/homepageButtons': (BuildContext context) => new HomePage()
        },
        home: Builder(
          builder: (context) => Scaffold(
              body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x88972C2C), Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 45.0, left: 20.0, right: 20.0, bottom: 30.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Mobile Shielding',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/MobileShieldingLogo.jpg'),
                        radius: 100,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 40.0,
                    left: 50.0,
                    right: 50.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 55.0,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'User name',
                              labelStyle: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white
                              ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)
                            )
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            color: Colors.black54),
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                      ),

                      Container(
                        height: 55.0,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(50.0)),
                            color: Colors.black54),
                        padding: EdgeInsets.all(10.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 250.0,
                  margin: EdgeInsets.all(70.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ElevatedButton.styleFrom(primary: Color(0xff790507)),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
//Scaffold creates a white background, allows for ability to add app bar etc.

}
