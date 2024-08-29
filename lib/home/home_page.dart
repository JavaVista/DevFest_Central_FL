import 'package:devfestfl/home/index.dart';
import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeBloc = HomeBloc();
    return DevScaffold(
      title: "Home",
      body: HomeScreen(homeBloc: homeBloc),
    );
  }
}