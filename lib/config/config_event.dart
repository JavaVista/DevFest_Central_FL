import 'package:devfestfl/utils/devfest.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

import 'index.dart';

@immutable
abstract class ConfigEvent extends Equatable {
  const ConfigEvent([List props = const <dynamic>[]]) : super();
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

class DarkModeEvent extends ConfigEvent {
  final bool darkOn;


  DarkModeEvent(this.darkOn);  
  final _logger = Logger('ConfigEvent');

  @override
  String toString() => 'DarkModeEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState? currentState, ConfigBloc? bloc}) async {
    try {
      bloc?.darkModeOn = darkOn;
      await Devfest.prefs?.setBool(Devfest.darkModePref, darkOn);
      return InConfigState();
    } catch (exception, stackTrace) {
      _logger.severe('Error in ConfigEvent', exception, stackTrace);
      return ErrorConfigState(exception.toString());
    }
  }

  @override
  List<Object> get props => [];
}

class LoadConfigEvent extends ConfigEvent {
  final _logger = Logger('ConfigEvent');
  @override
  String toString() => 'LoadConfigEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState? currentState, ConfigBloc? bloc}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return InConfigState();
    } catch (exception, stackTrace) {
      _logger.severe('Error in ConfigEvent', exception, stackTrace);
      return ErrorConfigState(exception.toString());
    }
  }

  @override
  List<Object> get props => [];
}
