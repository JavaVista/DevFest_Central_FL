import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_widgets.dart/home_front.dart';
import 'index.dart';

class HomeScreen extends StatefulWidget {
  final HomeBloc homeBloc;
  
  const HomeScreen({Key? key, required this.homeBloc}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late final HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();
    _homeBloc = HomeBloc();
    _homeBloc.add(LoadHomeEvent());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _homeBloc,
      builder: (context, currentState) {
        if (currentState is UnHomeState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return const HomeFront();
      },
    );
  }
}

