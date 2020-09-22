import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerWidgetState();
  }
}

class DrawerWidgetState extends State with SingleTickerProviderStateMixin {
  final List tabs = ["MENU", "PROFILE"];
  TabController controller;
  Widget menu, profile;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: tabs.length, vsync: this);
  }

  void _onTap(int value) {
    setState(() {
      //do something
    });
  }

  Widget getTabPage() {
    switch (controller.index) {
      case 0:
        if (menu == null) {
          menu = DrawerMenuWidget();
        }
        return menu;
      case 1:
        if (profile == null) {
          profile = DrawerProfileWidget();
        }
        return profile;
      default:
        return menu;
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Drawer(
        child: Column(
      children: <Widget>[
        Material(
          elevation: 1,
          child: Column(
            children: <Widget>[
              DrawerHeader(),
              TabBar(
                unselectedLabelColor: Colors.black54,
                labelColor: theme.accentColor,
                tabs: tabs.map((e) => Tab(text: e)).toList(),
                controller: controller,
                onTap: (value) {
                  _onTap(value);
                },
              ),
            ],
          ),
        ),
        getTabPage(),
      ],
    ));
  }
}

class DrawerHeader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerHeaderState();
  }
}

class DrawerHeaderState extends State {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
        height: statusBarHeight + 80,
        child: Container(
          padding: EdgeInsets.only(top: statusBarHeight, left: 10),
          child: Row(
            children: <Widget>[
              Image.asset(
                "images/ic_avatar.png",
                width: 60,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ramset",
                    ),
                    Text("unhoo28"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class DrawerMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text("Organizations"),
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text("Pinned"),
        ),
        ListTile(
          leading: Icon(Icons.trending_up),
          title: Text("Trending"),
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text("Gists"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.bug_report),
          title: Text("Report an issue"),
        ),
        ListTile(
          leading: Icon(Icons.report),
          title: Text("FAQ"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
        ListTile(
          leading: Icon(Icons.report),
          title: Text("About"),
        )
      ],
      padding: EdgeInsets.only(top: 0),
    ));
  }
}

class DrawerProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.only(top: 0),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Logout"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.add),
          title: Text("Add Account"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.book),
          title: Text("Repositories"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.star),
          title: Text("Starred"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text("Pinned"),
        )
      ],
    ));
  }
}
