import 'package:fasthub/home.dart';
import 'package:fasthub/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FastHubApp());
}

class FastHubApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FastHubState();
  }
}

class FastHubState extends State<FastHubApp> {
  bool login;

  @override
  void initState() {
    super.initState();
    login = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FastHub",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: login ? Home() : Login(),
    );
  }
}
