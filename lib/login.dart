import 'package:flutter/material.dart';

import 'LoginForm.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF303F9F),
        body: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(-2, 2)),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF2962FF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2))),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Sign in using your Github account to use FastHub",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Text(
                        "Choose your login type",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2))),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        "Basic Authentication",
                        style:
                            TextStyle(color: Color(0xFF388E3C), fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginForm(
                            loginType: LoginType.BASIC,
                          );
                        }));
                      },
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return LoginForm(
                                        loginType: LoginType.ACCESS_TOKEN);
                                  }));
                                },
                                child: Text(
                                  "Access Token",
                                  style: TextStyle(
                                      color: Color(0xFFC2185B), fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 0.5,
                              height: 40,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: FlatButton(
                                child: Text(
                                  "Enterprise",
                                  style: TextStyle(
                                      color: Color(0xFF7B1FA2), fontSize: 18),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: 60,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "Login using your default browser(OAuth)",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: FlatButton(
                        child: Text(
                          "OPEN IN BROWSER",
                          style:
                              TextStyle(fontSize: 15, color: Colors.blueAccent),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
