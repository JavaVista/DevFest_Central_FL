import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

import 'index.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  static final ConfigBloc _configBlocSingleton = ConfigBloc._internal();
  final _logger = Logger('ConfigEvent');

  factory ConfigBloc() {
    return _configBlocSingleton;
  }

  ConfigBloc._internal() : super(UnConfigState());
  bool darkModeOn = false;

  ConfigState get initialState => UnConfigState();

  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {
    try {
      yield UnConfigState();
      yield await event.applyAsync(currentState: state, bloc: this);
    } catch (exception, stackTrace) {
      _logger.severe('Error in ConfigEvent', exception, stackTrace);
      yield state;
    }
  }
}
