import 'package:fasthub/fastaccess/ui/moudels/main/Home.dart';
import 'package:fasthub/fastaccess/ui/moudels/login/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  bool _login;

  @override
  void initState() {
    super.initState();
    _login = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FastHub",
      theme: ThemeData(
          primaryColor: Color(0xFFF5F5F5),
          primaryColorDark: Color(0xFFE0E0E0),
          brightness: Brightness.light,
          accentColor: Color(0xFF2962FF),
          dividerColor: Color(0x80949494),
          cardColor: Color(0xFFFFFFFF),
          iconTheme: IconThemeData(color: Color(0xFF212121)),
          appBarTheme: AppBarTheme(elevation: 3, brightness: Brightness.light),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color(0XFFFAFAFA)),
      debugShowCheckedModeBanner: false,
      home: _login ? Home() : Login(),
    );
  }
}
