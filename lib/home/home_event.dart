import 'package:devfestcenfl/home/index.dart';

import 'index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent {
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  //final IHomeProvider _homeProvider = HomeProvider();
  @override
  String toString() => 'LoadHomeEvent';

  @override
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc}) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return InHomeState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorHomeState(_?.toString());
    }
  }
}
