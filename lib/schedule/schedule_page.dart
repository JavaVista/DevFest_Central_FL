import 'dart:math';

import 'package:devfestcenfl/home/session.dart';
import 'package:devfestcenfl/schedule/session_list.dart';
import 'package:devfestcenfl/universal/dev_scaffold.dart';
import 'package:devfestcenfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SchedulePage extends StatelessWidget {
  static const String routeName = "/schedule";

  @override
  Widget build(BuildContext context) {
    var webSessions = sessions.where((s) => s.track == "web").toList();
    var mobileSessions = sessions.where((s) => s.track == "mobile").toList();
    var startupsSessions = sessions.where((s) => s.track == "startup").toList();
    return DefaultTabController(
      length: 3,
      child: DevScaffold(
        title: "Schedule",
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          isScrollable: false,
          labelStyle: TextStyle(fontSize: 12),
          tabs: <Widget>[
            Tab(
              child: Text("Web"),
              icon: Icon(
                FontAwesomeIcons.globe,
                size: 20,
              ),
            ),
            Tab(
              child: Text("Mobile"),
              icon: Icon(
                FontAwesomeIcons.mobile,
                size: 20,
              ),
            ),
            Tab(
              child: Text("Startups"),
              icon: Icon(
                FontAwesomeIcons.rocket,
                size: 20,
              ),
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            SessionList(
              allSessions: webSessions,
            ),
            SessionList(
              allSessions: mobileSessions,
            ),
            SessionList(
              allSessions: startupsSessions,
            ),
          ],
        ),
      ),
    );
  }
}
