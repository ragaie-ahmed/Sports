
abstract class EventsState {}

class EventsInitial extends EventsState {}
class EventLoading extends EventsState{}
class EventLoaded extends EventsState{
}
class ErrorEvent extends EventsState{
  final String error;

  ErrorEvent({required this.error});

}