import 'package:devfestcenfl/home/index.dart';
import 'package:devfestcenfl/schedule/session_list.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const WebScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var sessions = state.sessionsData.sessions;
    var webSessions = sessions.where((s) => s.track == "web").toList();
    return SessionList(
      allSessions: webSessions,
    );
  }
}
