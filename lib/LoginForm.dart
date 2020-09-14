import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key, @required this.loginType}) : super(key: key);
  final LoginType loginType;
  @override
  State<StatefulWidget> createState() {
    return LoginFormState(loginType: loginType);
  }
}

enum LoginType { BASIC, ACCESS_TOKEN, ENTERPRISE }

class LoginFormState extends State {
  LoginFormState({Key key, @required this.loginType}) : super();
  final LoginType loginType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF303F9F),
      body: Container(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
                decoration: BoxDecoration(
                    color: Color(0xFF2962FF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2))),
                child: Text(
                  "Sign in using your GitHub account to use FastHub",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2))),
                child: Column(
                  children: [
                    Visibility(
                        visible: loginType == LoginType.BASIC,
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: TextField(
                                autofocus: true,
                                decoration:
                                    InputDecoration(labelText: "Username")))),
                    Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: TextField(
                            autofocus: true,
                            obscureText: true,
                            decoration:
                                InputDecoration(labelText: "Password"))),
                    Visibility(
                        visible: loginType == LoginType.ACCESS_TOKEN,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: TextField(
                                autofocus: true,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Access Token")))),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: FloatingActionButton(
                        onPressed: null,
                        backgroundColor: Color(0xFF2962FF),
                        child: Icon(Icons.send),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Text("OR",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                    ),
                    Divider(
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "Login using your default browser (OAuth)",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: FlatButton(
                          onPressed: null,
                          child: Text(
                            "OPEN IN BROWSER",
                            style: TextStyle(
                                color: Color(0xFF2962FF), fontSize: 16),
                          )),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
