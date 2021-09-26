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
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/MobileShieldingLogo.jpg'),
              Text('Mobile Shielding Text')
            ],
          ),
        ),
      ),
    );
  }
//Scaffold creates a white background, allows for ability to add app bar etc.

}
