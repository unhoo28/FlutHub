import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchWidgetState();
  }
}

class SearchWidgetState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          child: TextField(
              autofocus: true,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: "Search", border: InputBorder.none)),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: null)
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
