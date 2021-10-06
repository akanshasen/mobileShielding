import 'package:flutter/material.dart';
import 'loginpage.dart';

void main() {
  runApp(LoginPage());
}

class MsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark, primaryColor: Color(0xff790507)),
      home: new LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
