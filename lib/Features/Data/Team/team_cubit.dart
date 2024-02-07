

import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports/Features/Data/Team/team_state.dart';
import 'package:http/http.dart' as http;
import 'package:sports/Features/Domain/Team.dart';

class TeamCubit extends Cubit<TeamState> {
  TeamCubit() : super(TeamInitial());
  static TeamCubit get(context)=>BlocProvider.of(context);
  List<Team> listTeam=[];
  Team ?team;
  String ?goal;
  getTeam(String id) async {
    emit(LoadingTeam());
    try {
      http.Response response = await http.get(
        Uri.parse("https://apiv3.apifootball.com/?action=get_teams&team_id=$id&APIkey=d0e1e9a9d5a6d3f68cda8d234020d855a9c5d5c9a226e5ba5b242807f2ba61ee"),
      );
      var responseBody = jsonDecode(response.body);
      for (var item in responseBody) {
        listTeam.add(Team.fromJson(item));
        print("the goal is $goal");

      }
      emit(SuccessTeam());
    } catch (e) {
      emit(ErrorTeam(error: e.toString()));
    }
  }
}
