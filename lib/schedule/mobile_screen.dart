import 'package:devfestcenfl/home/index.dart';
import 'package:devfestcenfl/schedule/session_list.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const MobileScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var sessions = state.sessionsData.sessions;
    var mobileSessions = sessions.where((s) => s.track == "mobile").toList();
    return SessionList(
      allSessions: mobileSessions,
    );
  }
}