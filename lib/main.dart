import 'package:flutter/material.dart';

void main() {
  runApp(MsApp());
}

class MsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff790507),
          title: Text('Mobile Shielding'),
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: <Widget> [
                  Text(
                    'Mobile Shielding',
                    style:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/MobileShieldingLogo.jpg',
                  height: 200,
                  width: 200,)
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
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
//Scaffold creates a white background, allows for ability to add app bar etc.

}
