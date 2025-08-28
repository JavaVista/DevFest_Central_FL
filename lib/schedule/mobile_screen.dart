import 'package:devfestfl/home/index.dart';
import 'package:devfestfl/schedule/session_list.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const MobileScreen({super.key, required this.homeBloc});
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.state as InHomeState;
    var sessions = state.sessionsData.sessions;
    var mobileSessions = sessions.where((s) => s.track == "mobile").toList();
    return SessionList(
      allSessions: mobileSessions, other: const [],
    );
  }
}