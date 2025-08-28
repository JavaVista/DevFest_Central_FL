import 'package:devfestfl/home/index.dart';
import 'package:devfestfl/schedule/session_list.dart';
import 'package:flutter/material.dart';

class CloudScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const CloudScreen({super.key, required this.homeBloc});
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.state as InHomeState;
    var sessions = state.sessionsData.sessions;
    var startupsSessions = sessions.where((s) => s.track == "startup").toList();
    return SessionList(
      allSessions: startupsSessions, other: const [],
    );
  }
}
