import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sports/Core/Constant/Const.dart';
import 'package:sports/Features/Data/home_state.dart';
import 'package:sports/Features/Domain/CountryModel.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:sports/Features/Domain/Standing.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  List<Events> listCountry = [];

  getCountry() async {
    emit(LoadedCountry());
    try {
      http.Response response = await http.get(
          Uri.parse("https://apiv3.apifootball.com/?action=get_leagues&APIkey=d0e1e9a9d5a6d3f68cda8d234020d855a9c5d5c9a226e5ba5b242807f2ba61ee"),
 );
      var responseBody = jsonDecode(response.body);
      for (var item in responseBody) {
        listCountry.add(Events.fromJson(item));

      }
      emit(LoadingCountry());
    } catch (e) {
      emit(ErrorCountry(error: e.toString()));
    }
  }
}
