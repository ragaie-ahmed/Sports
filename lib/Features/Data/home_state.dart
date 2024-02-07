

abstract class HomeState {}

class HomeInitial extends HomeState {}
class LoadedCountry extends HomeState{}
class LoadingCountry extends HomeState{

}
class ErrorCountry extends HomeState{
  final String error;

  ErrorCountry({required this.error});

}


