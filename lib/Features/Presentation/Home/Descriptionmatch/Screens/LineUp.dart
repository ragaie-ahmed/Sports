import 'package:flutter/material.dart';
import 'package:sports/Features/Domain/Events.dart';

class LineUp extends StatelessWidget {
   LineUp({super.key,required this.events});
Events events;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 80,
                        child: Text(events.matchHometeamName.toString())),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                      NetworkImage(events.teamHomeBadge.toString()),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                          events.matchHometeamSystem.toString(),
                          style: TextStyle(color: Colors.black),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children:
                  events.lineup!.home!.startingLineups!.map((element) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: 130,
                                child: Text(element.lineupPlayer.toString())),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(element.lineupNumber.toString())),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ],
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      children: events.lineup!.home!.coach!.map((element) {
                        return Row(
                          children: [
                            Text(
                              "CoachNae:",
                              style:
                              TextStyle(color: Colors.tealAccent, fontSize: 16),
                            ),
                            SizedBox(
                                width: 65,
                                child: Text(
                                  "${element.lineupPlayer}",
                                  style: TextStyle(overflow: TextOverflow.ellipsis),
                                )),
                          ],
                        );
                      }).toList()),
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 80,
                        child: Text(events.matchAwayteamName.toString())),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                      NetworkImage(events.teamAwayBadge.toString()),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                          events.matchAwayteamSystem.toString(),
                          style: TextStyle(color: Colors.black),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children:
                  events.lineup!.away!.startingLineups!.map((element) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(element.lineupNumber.toString())),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                                width: 130,
                                child: Text(element.lineupPlayer.toString())),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ],
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      children: events.lineup!.away!.coach!.map((element) {
                        return Row(
                          children: [
                            const Text(
                              "CoachNae:",
                              style:
                              TextStyle(color: Colors.tealAccent, fontSize: 16),
                            ),
                            SizedBox(
                                width: 65,
                                child: Text(
                                  "${element.lineupPlayer}",
                                  style: TextStyle(overflow: TextOverflow.ellipsis),
                                )),
                          ],
                        );
                      }).toList()),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
