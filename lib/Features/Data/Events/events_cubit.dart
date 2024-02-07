

import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports/Features/Data/Events/events_state.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';


class EventsCubit extends Cubit<EventsState> {
  EventsCubit() : super(EventsInitial());
 static EventsCubit get(context)=>BlocProvider.of(context);



  List<Events> listEvents = [];
  List<Events> newData = [];


 // Initial date for the calendar

  getEvents(String from) async {
    emit(EventLoading());
    try {
      listEvents.clear();
      http.Response response = await http.get(
        Uri.parse("https://apiv3.apifootball.com/?action=get_events&from=$from&to=$from&APIkey=d0e1e9a9d5a6d3f68cda8d234020d855a9c5d5c9a226e5ba5b242807f2ba61ee"),
      );
      var responseBody = jsonDecode(response.body);
      for (var item in responseBody) {
        newData.add(Events.fromJson(item));
      }
      listEvents = newData;


      emit(EventLoaded());
    } catch (e) {
      emit(ErrorEvent(error: e.toString()));
      print(e.toString());
    }
  }}
