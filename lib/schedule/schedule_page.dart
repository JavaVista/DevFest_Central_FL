import 'dart:math';

import 'package:devfestfl/home/session.dart';
import 'package:devfestfl/schedule/session_list.dart';
import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SchedulePage extends StatelessWidget {
  static const String routeName = "/schedule";

  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otherSessions = sessions.where((s) => s.track == "other").toList();
    var webSessions = sessions.where((s) => s.track == "web").toList();
    var mobileSessions = sessions.where((s) => s.track == "mobile").toList();
    var startupsSessions = sessions.where((s) => s.track == "startup").toList();
    return DefaultTabController(
      length: 4,
      child: DevScaffold(
        title: "Schedule",
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          isScrollable: false,
          labelStyle: const TextStyle(fontSize: 12),
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                FontAwesomeIcons.users,
                size: 20,
              ),
              child: Text("Activity"),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.globe,
                size: 20,
              ),
              child: Text("Web"),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.mobile,
                size: 20,
              ),
              child: Text("Mobile"),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.rocket,
                size: 20,
              ),
              child: Text("Startups"),
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            SessionList(
              allSessions: otherSessions, other: const [],
            ),
            SessionList(
              allSessions: webSessions, other: const [],
            ),
            SessionList(
              allSessions: mobileSessions, other: const [],
            ),
            SessionList(
              allSessions: startupsSessions, other: const [],
            ),
          ],
        ),
      ),
    );
  }
}
