import 'package:devfestfl/home/session.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState([Iterable props = const []]) : super();
  /// Copy object for use in action
  HomeState getStateCopy();
}

/// UnInitialized
class UnHomeState extends HomeState {
  @override
  String toString() => 'UnHomeState';

  @override
  HomeState getStateCopy() {
    return UnHomeState();
  }

  @override
  List<Object> get props => [];}

/// Initialized
class InHomeState extends HomeState {
  final SessionsData sessionsData;

  InHomeState({
    required this.sessionsData,
  }) : super([sessionsData]);

  @override
  String toString() => 'InHomeState';

  @override
  HomeState getStateCopy() {
    return InHomeState(
      sessionsData: sessionsData,
    );
  }

  @override
  List<Object> get props => [];}

class ErrorHomeState extends HomeState {
  final String errorMessage;

  const ErrorHomeState(this.errorMessage);

  @override
  String toString() => 'ErrorHomeState';

  @override
  HomeState getStateCopy() {
    return ErrorHomeState(errorMessage);
  }

  @override
  List<Object> get props => [];}
