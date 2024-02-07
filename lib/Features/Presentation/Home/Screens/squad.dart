import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/Description.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/LineUp.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/Statistics.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/card.dart';
import 'package:sports/Features/Presentation/Home/Screens/Leagues/Screens/Standing.dart';
import 'package:sports/Features/Presentation/Home/Team/Screen/HomeTeam.dart';

class Squad extends StatefulWidget {
  Squad({Key? key, required this.events, required this.id}) : super(key: key);

  final Events events;
  bool isDescVisible = false;
  final String id;

  @override
  State<Squad> createState() => _SquadState();
}

class _SquadState extends State<Squad> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_sharp)),
                ),
                widget.events.matchStatus == "Finished"
                    ? Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Finished",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return HomeTeam(
                                          id: widget.events.matchHometeamId
                                              .toString(),
                                          idLeague: widget.id,
                                        );
                                      },
                                    ));
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: widget
                                            .events.teamHomeBadge!.isEmpty
                                        ? NetworkImage(
                                            "https://th.bing.com/th/id/OIP.UFEKzDjRbqdbPLXZvqxnDQHaGB?w=239&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7")
                                        : NetworkImage(widget
                                            .events.teamHomeBadge
                                            .toString()),
                                  ),
                                ),
                                Text(
                                  widget.events.matchHometeamName.toString(),
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Center(
                                  child: Text(
                                      "${widget.events.matchHometeamScore}-${widget.events.matchAwayteamScore}"),
                                ),
                                Text(widget.events.matchAwayteamName.toString(),
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis)),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return HomeTeam(
                                          id: widget.events.matchAwayteamId
                                              .toString(),
                                          idLeague: widget.id,
                                        );
                                      },
                                    ));
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: widget
                                            .events.teamAwayBadge!.isEmpty
                                        ? NetworkImage(
                                            "https://th.bing.com/th/id/OIP.UFEKzDjRbqdbPLXZvqxnDQHaGB?w=239&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7")
                                        : NetworkImage(widget
                                            .events.teamAwayBadge
                                            .toString()),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  widget.events.teamHomeBadge.toString(),
                                  height: 30,
                                  width: 30,
                                ),
                                Text(
                                  widget.events.matchHometeamName.toString(),
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Center(
                                    child: Text(
                                        widget.events.matchTime.toString())),
                                Text(widget.events.matchAwayteamName.toString(),
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis)),
                                Image.network(
                                  widget.events.teamAwayBadge.toString(),
                                  height: 30,
                                  width: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Event'),
              Tab(text: 'description'),
              Tab(text: 'LineUp'),
              Tab(text: 'Statistics'),
              Tab(text: 'Standing'),
            ],
          ),
          toolbarHeight: 150.0, // Set the custom height for the AppBar
        ),
        body: TabBarView(
          children: [
            widget.events.lineup!.home!.startingLineups!.isNotEmpty
                ? ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                widget.events.matchStatus == "Finished"
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Finished"),
                                          Icon(Icons.sports)
                                        ],
                                      )
                                    : Text(""),
                                SizedBox(
                                  height: 10,
                                ),
                                EventsForMatch(events: widget.events),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Start"), Icon(Icons.sports)],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                : Center(child: Text("show Late")),
            // Content of Tab 1

            // Content of Tab 2
            Center(
              child: Description(events: widget.events),
            ),
            widget.events.lineup!.home!.startingLineups!.isNotEmpty
                ? Center(
                    child: LineUp(
                      events: widget.events,
                    ),
                  )
                : Center(child: Text("Show Late")),
            Center(child: StatisticsHome(events: widget.events)),
            // Content of Tab 3(
            Standing(id: widget.id)
          ],
        ),
      ),
    );
  }

  Widget twoButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
          color: widget.isDescVisible ? Colors.grey : Colors.green,
          onPressed: () {
            setState(() {
              widget.isDescVisible = false;
            });
          },
          child: Text("Sub"),
        ),
        MaterialButton(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
          color: widget.isDescVisible ? Colors.green : Colors.grey,
          onPressed: () {
            setState(() {
              widget.isDescVisible = true;
            });
          },
          child: Text("Events"),
        )
      ],
    );
  }
}
