
abstract class StandingState {}

class StandingInitial extends StandingState {}
class LoadedStanding extends StandingState {}
class LoadingStanding extends StandingState {}
class ErrorStanding extends StandingState {
  final String error;

  ErrorStanding({required this.error});

}
