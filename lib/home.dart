import 'package:flutter/material.dart';
import 'search.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  int _pageIndex = 0;
  void _onTap(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  Widget _getContent() {
    switch (_pageIndex) {
      case 0:
        return FeedsWidget();
      case 1:
        return IssuesWidget();
      case 2:
        return PRWidget();
      default:
        return FeedsWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "FastHub",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchWidget();
                }));
              })
        ],
      ),
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: Center(
        child: _getContent(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Feeds")),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), title: Text("Issues")),
          BottomNavigationBarItem(
              icon: Icon(Icons.work), title: Text("Pull Requests"))
        ],
        fixedColor: Color(0xFF2962FF),
        currentIndex: _pageIndex,
        onTap: (value) {
          _onTap(value);
        },
      ),
    );
  }
}

class FeedsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Feeds");
  }
}

class IssuesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Issues");
  }
}

class PRWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Pull Request");
  }
}

class DrawerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerWidgetState();
  }
}

class DrawerWidgetState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        children: <Widget>[
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(16, 30, 16, 16),
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "images/ic_avatar.png",
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, bottom: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Ramsey",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        "unhoo28",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
