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
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              backgroundColor: Color(0xff790507),
              title: Text('Mobile Shielding App'),
            ),
            body: Column(
              children: [
                Container(
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
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/MobileShieldingLogo.jpg',
                        height: 200,
                        width: 200,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    //onPressed: () => {'/homepageButtons'},
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
//Scaffold creates a white background, allows for ability to add app bar etc.

}
