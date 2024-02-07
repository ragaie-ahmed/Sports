import 'package:flutter/material.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Widget/CustomRowForDescription.dart';

class Description extends StatelessWidget {
   Description({super.key,required this.events});
Events events;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                "description",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )),
        Card(
            color: Color(0xff4C6DBBFF),
            child: CustomRowForDescription(name1: "league_name:",name2:  events.leagueName.toString())),
        SizedBox(
          height: 8,
        ),
        Card(
          color: Color(0xff4C6DBBFF),
          child: CustomRowForDescription(name1: "match_round:",name2:  "round   ${events.matchRound}"),
        ),
        SizedBox(
          height: 8,
        ),
        Card(
            color: Color(0xff4C6DBBFF),
            child: CustomRowForDescription(name1: "match_stadium:",name2:  events.matchStadium.toString())),
        SizedBox(
          height: 8,
        ),
        Card(
            color: Color(0xff4C6DBBFF),
            child: CustomRowForDescription(name1:  "match_referee:",name2:  events.matchReferee.toString())),
        SizedBox(
          height: 8,
        ),
        Card(
            color: Color(0xff4C6DBBFF),
            child: CustomRowForDescription(name1:  "match_time:",name2:  events.matchTime.toString())),
        SizedBox(
          height: 8,
        ),
        Card(
            color: Color(0xff4C6DBBFF),
            child: CustomRowForDescription(name1:  "match_date:",name2:  events.matchDate.toString())),
      ],
    );
  }
}
