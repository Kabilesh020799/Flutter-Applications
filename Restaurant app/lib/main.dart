import 'package:flutter/material.dart';

import './screens/Tutorial3.dart';
import './screens/Tutorial2.dart';
import './screens/home.dart';
import './screens/Tutorial1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        backgroundColor: Colors.white,
      ),
      home: PageView(
        children: [
          Home(),
          Tutorial1(),
          Tutorial2(),
          Tutorial3(),
        ],
      ),
    );
  }
}
