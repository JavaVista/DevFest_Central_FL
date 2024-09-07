import 'dart:math';

import 'package:devfestfl/home/group.dart';
import 'package:devfestfl/schedule/session_list.dart';
import 'package:devfestfl/services/sessionize_api_service.dart';
import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SchedulePage extends StatefulWidget {
  static const String routeName = "/schedule";

  const SchedulePage({Key? key}) : super(key: key);

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage> {
  late Future<List<Group>> _sessionsFuture;

  @override
  void initState() {
    super.initState();
    _sessionsFuture = SessionizeApiService().getSessions();
  }

  @override
  Widget build(BuildContext context) {
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
              icon: Icon(FontAwesomeIcons.users, size: 20),
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
        body: FutureBuilder<List<Group>>(
          future: _sessionsFuture.then((sessions) => sessions.cast<Group>()),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No sessions found'));
            }

            final groups = snapshot.data!;
            final sessions = groups.expand((group) => group.sessions).toList();
            var otherSessions =
                sessions.where((s) => s.room == "Atrium").toList();
            var webSessions = sessions.where((s) => s.room == "Web").toList();
            var mobileSessions =
                sessions.where((s) => s.room == "Mobile").toList();
            var startupsSessions =
                sessions.where((s) => s.room == "Startup").toList();

            return TabBarView(
              children: <Widget>[
                SessionList(
                  allSessions: otherSessions,
                  other: const [],
                ),
                SessionList(
                  allSessions: webSessions,
                  other: const [],
                ),
                SessionList(
                  allSessions: mobileSessions,
                  other: const [],
                ),
                SessionList(
                  allSessions: startupsSessions,
                  other: const [],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
