import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              backgroundColor: Color(0xff790507),
              title: Text('Home'),
            ),
            body: Column(
              children: [
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Mobile Shielding Home Page',
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
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent),
                          child: Text(
                            'Scan App',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent),
                        child: Text(
                          'Find Threats',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent),
                          child: Text(
                            'Scan App',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent),
                        child: Text(
                          'Find Threats',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// class GridLayout extends StatelessWidget {
//   List<String> events = [
//     "Scan Apps",
//     "Scan WiFi",
//     "Find Threats",
//     "Clean Device"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Container(
//           margin: const EdgeInsets.only(top: 120.0),
//           child: GridView(
//             physics: BouncingScrollPhysics(),
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//           ),
//         ),
//       ),
//     );
//   }
// }
//Scaffold creates a white background, allows for ability to add app bar etc.
