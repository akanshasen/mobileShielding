import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff790507),
          title: Text('Home'),
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Mobile Shielding Home',
                    style:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () => {'/homepageButtons'},
                child: Text('This is home page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Scaffold creates a white background, allows for ability to add app bar etc.