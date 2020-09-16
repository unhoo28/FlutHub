import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  EmptyWidget(this._tips, this._reload, this._onPressed) : super();

  final String _tips;
  final bool _reload;
  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              _tips,
              style: TextStyle(fontSize: 20, color: theme.accentColor),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                "\\_()_/",
                style: TextStyle(color: theme.accentColor, fontSize: 16),
              )),
          Visibility(
            child: FlatButton(
                onPressed: _onPressed,
                child: Text(
                  "Reload",
                  style: TextStyle(fontSize: 20, color: Colors.amber.shade800),
                )),
            visible: _reload,
          )
        ],
      ),
    );
  }
}
