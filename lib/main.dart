import 'package:flutter/material.dart';
import 'loginpage.dart';

void main() {
  runApp(LoginPage());
}

class MsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
    );
  }
}
