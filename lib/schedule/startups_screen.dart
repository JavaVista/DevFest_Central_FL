import 'package:devfestcenfl/home/index.dart';
import 'package:devfestcenfl/schedule/session_list.dart';
import 'package:flutter/material.dart';

class CloudScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const CloudScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var sessions = state.sessionsData.sessions;
    var startupsSessions = sessions.where((s) => s.track == "startup").toList();
    return SessionList(
      allSessions: startupsSessions,
    );
  }
}
