import 'package:fasthub/fastaccess/ui/widgets/Empty.dart';
import 'package:flutter/material.dart';

class FeedsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FeedsWidgetState();
  }
}

class FeedsWidgetState extends State {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey();
  bool _loading = false;
  Future<void> _onRefresh() async {
    setState(() {
      _loading = true;
    });
    await (Future.delayed(Duration(seconds: 2), () {
      // network
    }))
        .then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  _onPressed() {
    setState(() {
      _refreshIndicatorKey.currentState.show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      child: Stack(
        children: [
          Visibility(
            child: EmptyWidget(
              "No feeds",
              true,
              () => _onPressed(),
            ),
            visible: !_loading,
          ),
          ListView(),
        ],
      ),
      onRefresh: _onRefresh,
    );
  }
}
