import 'dart:math';

import 'package:devfestfl/home/group.dart';
import 'package:devfestfl/home/speaker.dart';
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
  late Future<List<Speaker>> _speakersFuture;

  @override
  void initState() {
    super.initState();
    _sessionsFuture = SessionizeApiService().getSessions();
    _speakersFuture = SessionizeApiService().getSpeakers();
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
          future: _sessionsFuture,
          builder: (context, sessionsSnapshot) {
            return FutureBuilder<List<Speaker>>(
              future: _speakersFuture,
              builder: (context, speakersSnapshot) {
                if (sessionsSnapshot.connectionState ==
                        ConnectionState.waiting ||
                    speakersSnapshot.connectionState ==
                        ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (sessionsSnapshot.hasError ||
                    speakersSnapshot.hasError) {
                  return Center(
                      child: Text(
                          'Error: ${sessionsSnapshot.error ?? speakersSnapshot.error}'));
                } else if (!sessionsSnapshot.hasData ||
                    sessionsSnapshot.data!.isEmpty ||
                    !speakersSnapshot.hasData ||
                    speakersSnapshot.data!.isEmpty) {
                  return const Center(
                      child: Text('No sessions or speakers found'));
                }

                final groups = sessionsSnapshot.data!;
                final sessions =
                    groups.expand((group) => group.sessions).toList();
                final speakers = speakersSnapshot.data!;

                var serviceSessions =
                    sessions.where((s) => s.isServiceSession).toList();
                var webSessions =
                    sessions.where((s) => s.room == "Web").toList();
                var mobileSessions =
                    sessions.where((s) => s.room == "Mobile").toList();
                var startupsSessions =
                    sessions.where((s) => s.room == "Startup").toList();

                return TabBarView(
                  children: <Widget>[
                    SessionList(
                      allSessions: serviceSessions,
                      speakers: speakers,
                      other: const [],
                    ),
                    SessionList(
                      allSessions: webSessions,
                      speakers: speakers,
                      other: const [],
                    ),
                    SessionList(
                      allSessions: mobileSessions,
                      speakers: speakers,
                      other: const [],
                    ),
                    SessionList(
                      allSessions: startupsSessions,
                      speakers: speakers,
                      other: const [],
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
