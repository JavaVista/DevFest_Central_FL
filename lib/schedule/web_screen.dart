import 'package:devfestfl/home/index.dart';
import 'package:devfestfl/schedule/session_list.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const WebScreen({super.key, required this.homeBloc});
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.state as InHomeState;
    var sessions = state.sessionsData.sessions;
    var webSessions = sessions.where((s) => s.track == "web").toList();
    return SessionList(
      allSessions: webSessions, other: const [],
    );
  }
}
