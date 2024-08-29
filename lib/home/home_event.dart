import 'package:devfestfl/home/index.dart';
import 'package:devfestfl/home/session.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent {
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  final _logger = Logger('HomeEvent');
  @override
  String toString() => 'LoadHomeEvent';

  @override
  Future<HomeState> applyAsync({HomeState? currentState, HomeBloc? bloc}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return InHomeState(sessionsData: SessionsData(sessions: [])); 
    } catch (exception, stackTrace) {
      _logger.severe('$exception $stackTrace');
      return ErrorHomeState(exception.toString());
    }
  }
}
