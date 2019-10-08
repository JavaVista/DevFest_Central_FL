import 'package:devfestcenfl/home/home_screen.dart';
import 'package:devfestcenfl/home/index.dart';
import 'package:devfestcenfl/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    var _homeBlock = HomeBloc();
    return DevScaffold(
      title: "Home",
     body: HomeScreen(homeBloc: _homeBlock,),
    );
  }
}