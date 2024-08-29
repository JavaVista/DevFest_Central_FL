import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

import 'index.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  static final ConfigBloc _configBlocSingleton = ConfigBloc._internal();
  final _logger = Logger('ConfigEvent');

  factory ConfigBloc() {
    return _configBlocSingleton;
  }

  ConfigBloc._internal() : super(UnConfigState()) {
    on<DarkModeEvent>((event, emit) async {
      try {
        emit(UnConfigState());
        final newState = await event.applyAsync(currentState: state, bloc: this);
        emit(newState);
      } catch (exception, stackTrace) {
        _logger.severe('Error in DarkModeEvent', exception, stackTrace);
        emit(state);
      }
    });

    on<LoadConfigEvent>((event, emit) async {
      try {
        emit(UnConfigState());
        final newState = await event.applyAsync(currentState: state, bloc: this);
        emit(newState);
      } catch (exception, stackTrace) {
        _logger.severe('Error in LoadConfigEvent', exception, stackTrace);
        emit(state);
      }
    });
  }

  bool darkModeOn = false;

  ConfigState get initialState => UnConfigState();
}