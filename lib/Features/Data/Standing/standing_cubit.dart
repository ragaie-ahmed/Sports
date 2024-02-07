
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sports/Features/Data/Standing/standing_state.dart';
import 'package:sports/Features/Domain/Standing.dart';


class StandingCubit extends Cubit<StandingState> {
  StandingCubit() : super(StandingInitial());
 static StandingCubit get(context)=>BlocProvider.of(context);

  List<Standing> listStaing=[];
  getStanding(String id) async {
    emit(LoadedStanding());
    try {
      listStaing.clear();
      http.Response response = await http.get(
          Uri.parse("https://apiv3.apifootball.com/?action=get_standings&league_id=$id&APIkey=d0e1e9a9d5a6d3f68cda8d234020d855a9c5d5c9a226e5ba5b242807f2ba61ee"),
     );
      var responseBody = jsonDecode(response.body);
      for (var item in responseBody) {
        listStaing.add(Standing.fromJson(item));

      }
      emit(LoadingStanding());
    } catch (e) {
      emit(ErrorStanding(error: e.toString()));
      print(e.toString());
    }
  }
}
