import 'package:devfestfl/home/index.dart';
import 'package:devfestfl/schedule/session_list.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const MobileScreen({Key? key, required this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.state as InHomeState;
    var sessions = state.sessionsData.sessions;
    var mobileSessions = sessions.where((s) => s.room == "mobile").toList();
    return SessionList(
      allSessions: mobileSessions, other: const [], speakers: const [],
    );
  }
}