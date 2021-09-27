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
                  Text('Mobile Shielding'),
                  Image.asset('assets/MobileShieldingLogo.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
//Scaffold creates a white background, allows for ability to add app bar etc.

}
