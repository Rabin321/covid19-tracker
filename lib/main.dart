import 'package:covid19/homepage.dart';
import 'package:flutter/material.dart';


void main() => runApp(
      MyApp(),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.blueGrey[900]
          ),
          home: Homepage(),
        );
  }
}
// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
      
//       primaryColor: Colors.blueGrey[900]
//     ),
//     home: Homepage(),
//   ));
// }