import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mobile Shielding'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text('Mobile Shielding :)'),
                  Image.asset('assets/MobileShieldingLogo.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}