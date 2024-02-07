import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sports/Features/Domain/Events.dart';

class BuildGoalScoreEvent extends StatelessWidget {
   BuildGoalScoreEvent({super.key,required this.event});
  Goalscorer event;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 90,
                          child: Text(event.homeScorer.toString(),overflow: TextOverflow.ellipsis,)),
                      SizedBox(
                        width: 90,

                        child: Text(
                          event.homeAssist.toString(),
                          style: TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  if (event.homeScorer!.isNotEmpty)
                    Icon(Icons.sports_soccer, color: Colors.green),
                ],
              ),
            ),
            CircleAvatar(
              radius: 17,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.green,
                child: Text(event.time.toString()),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (event.awayScorer!.isNotEmpty)
                    Icon(Icons.sports_soccer, color: Colors.green),
                  SizedBox(
                    width: 4,
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: 90,
                          child: Text(event.awayScorer.toString(),style: TextStyle(overflow: TextOverflow.ellipsis),)),
                      SizedBox(
                        width: 90,
                        child: Text(event.awayAssist.toString(),
                            style: TextStyle(color: Colors.grey,overflow: TextOverflow.ellipsis)),
                      ),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
