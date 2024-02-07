import 'package:flutter/material.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Widget/buildCardEvent.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Widget/buildgoalScorerEvent.dart';

class EventsForMatch extends StatelessWidget {
   EventsForMatch({super.key,required this.events});
   Events events;
  List<String> timeList =
  List.generate(140, (index) => (index + 1).toString());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      reverse: true,
      itemCount: timeList.length,
      itemBuilder: (context, index) {
        String currentTime = timeList[index];
        for (var cardEvent in events.cards!) {
          if (cardEvent.time.toString() == currentTime) {
            return BuildCardEvents(event: cardEvent,);
          }
        }

        for (var goalScorerEvent in events.goalscorer!) {
          if (goalScorerEvent.time.toString() == currentTime) {
            return BuildGoalScoreEvent(event: goalScorerEvent,);
          }
        }


        return Container();
      },
    );
  }
}
