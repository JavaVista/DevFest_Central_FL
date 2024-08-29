import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

import 'index.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final _logger = Logger('HomeState');

  static final HomeBloc _homeBlocSingleton = HomeBloc._internal();

  factory HomeBloc() {
    return _homeBlocSingleton;
  }

  HomeBloc._internal() : super(UnHomeState()) {
    on<LoadHomeEvent>((event, emit) async {
      try {
        emit(UnHomeState());
        final newState = await event.applyAsync(currentState: state, bloc: this);
        emit(newState);
      } catch (exception, stackTrace) {
        _logger.severe('Error in LoadHomeEvent', exception, stackTrace);
        emit(state);
      }
    });
  }

  HomeState get initialState => UnHomeState();
}