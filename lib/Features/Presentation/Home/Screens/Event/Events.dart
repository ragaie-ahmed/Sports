import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sports/Features/Data/Events/events_cubit.dart';
import 'package:sports/Features/Data/Events/events_state.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:sports/Features/Presentation/Home/Screens/Event/description.dart';
import 'package:sports/Features/Presentation/Home/Screens/squad.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Events extends StatefulWidget {
  Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Widget build(BuildContext context) {
    var cubit = EventsCubit.get(context);

    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
          onPressed: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              firstDate: DateTime.parse("2024-01-18"),
              lastDate: DateTime.parse("2024-05-02"),
              initialDate: DateTime.now(),
            );

            if (pickedDate != null) {
              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);


                // Fetch new events based on the selected date
                cubit.getEvents(formattedDate);

            }
          },
          child: Icon(Icons.calendar_month),
        ),
        backgroundColor: Colors.transparent,
        title: Text('Events'),
      ),
      body: BlocBuilder<EventsCubit, EventsState>(
        builder: (context, state) {
          var cubit = EventsCubit.get(context);
          if (state is EventLoaded) {
            return ListView.builder(
              itemCount: cubit.listEvents.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text("${cubit.listEvents[index].matchDate}"),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Squad(events: cubit.listEvents[index], id: cubit.listEvents[index].leagueId.toString());
                                },
                              ),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Expanded(child: Text("${cubit.listEvents[index].matchHometeamName}")),

                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: cubit
                                          .listEvents[index].teamHomeBadge!.isNotEmpty
                                          ? Image.network(
                                          cubit.listEvents[index].teamHomeBadge.toString(),width: 15,height: 40)
                                          : Image.network(
                                          "https://th.bing.com/th/id/OIP.UFEKzDjRbqdbPLXZvqxnDQHaGB?w=239&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7",width: 15,height: 40,),
                                    ),
                                  ),
                                  cubit.listEvents[index].matchStatus!.isNotEmpty
                                      ? Row(
                                    children: [
                                      Text("${cubit.listEvents[index].matchHometeamFtScore}"),
                                      Text("-"),
                                      Text("${cubit.listEvents[index].matchAwayteamFtScore}"),
                                    ],
                                  )
                                      : Text("${cubit.listEvents[index].matchTime}"),

                                  Expanded(
                                    child: ClipRRect(

                                      borderRadius: BorderRadius.circular(100),
                                      child: cubit
                                          .listEvents[index].teamAwayBadge!.isNotEmpty
                                          ? Image.network(
                                          cubit.listEvents[index].teamAwayBadge.toString(),width: 10,height: 40)
                                          : Image.network(
                                          "https://th.bing.com/th/id/OIP.UFEKzDjRbqdbPLXZvqxnDQHaGB?w=239&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7",width: 20,height: 40),
                                    ),
                                  ),
                                  Expanded(child: Text("${cubit.listEvents[index].matchAwayteamName}")),
                                  SizedBox(width: 5,),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider()
                      ],
                    ),
                  ],
                );
              },
            );
          } else if (state is ErrorEvent) {
            // Use ScaffoldMessenger to show SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
      return ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        },
        itemBuilder: (context, index) {
          return   Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                  ),

                  Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                ),
                  Container(
                    width: 50,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                  ),

                  Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                ),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                    ),
                  ),
              ],),
            ),
          );
        },
        itemCount: 20,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      );
        },
      ),
    );
  }
}



  // Helper method to create data source for the calendar

// ...

