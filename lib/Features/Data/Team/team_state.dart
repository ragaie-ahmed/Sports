
abstract class TeamState {}

class TeamInitial extends TeamState {}
class LoadingTeam extends TeamState {}
class SuccessTeam extends TeamState {}
class ErrorTeam extends TeamState {
final String error;

  ErrorTeam({required this.error});}
