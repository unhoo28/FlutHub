import 'package:fasthub/FasthubIcons.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import '../widgets/Feeds.dart';
import '../widgets/Issues.dart';
import '../widgets/PullRequests.dart';
import '../widgets/Drawer.dart';

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
        return PullRequestsWidget();
      default:
        return FeedsWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FastHub",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none), onPressed: null),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchWidget();
                }));
              })
        ],
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: _getContent(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FasthubIcons.github),
            title: Text("Feeds"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FasthubIcons.issues),
            title: Text("Issues"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FasthubIcons.pr),
            title: Text("Pull Requests"),
          )
        ],
        fixedColor: theme.accentColor,
        currentIndex: _pageIndex,
        onTap: (value) {
          _onTap(value);
        },
        backgroundColor: theme.primaryColor,
      ),
    );
  }
}
