import 'package:equatable/equatable.dart';

@override
abstract class ConfigState extends Equatable {
  const ConfigState([List props = const <dynamic>[]]) : super();

  ConfigState getStateCopy();
}

class UnConfigState extends ConfigState {
  @override
  String toString() => 'UnConfigState';

  @override
  ConfigState getStateCopy() {
    return UnConfigState();
  }

  @override
  List<Object> get props => [];}

class InConfigState extends ConfigState {
  @override
  String toString() => 'InConfigState';

  @override
  ConfigState getStateCopy() {
    return InConfigState();
  }

  @override
  List<Object> get props => [];}

class ErrorConfigState extends ConfigState {
  final String errorMessage;

  const ErrorConfigState(this.errorMessage);

  @override
  String toString() => 'ErrorConfigState';

  @override
  ConfigState getStateCopy() {
    return ErrorConfigState(errorMessage);
  }

  @override
  List<Object> get props => [];}
