import 'package:fasthub/fastaccess/provider/icons/IconsProvider.dart';
import 'package:flutter/material.dart';
import '../search/Search.dart';
import '../feed/Feeds.dart';
import 'issues/Issues.dart';
import 'pullrequests/PullRequests.dart';
import 'Drawer.dart';

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
            icon: Icon(IconsProvider.github),
            title: Text("Feeds"),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsProvider.issues),
            title: Text("Issues"),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsProvider.pr),
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
