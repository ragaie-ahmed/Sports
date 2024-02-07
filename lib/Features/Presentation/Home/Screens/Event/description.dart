import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sports/Features/Domain/Events.dart';

class DescriptionEvents extends StatefulWidget {
  DescriptionEvents({required this.events});

  Events events;

  @override
  State<DescriptionEvents> createState() => _DescriptionEventsState();
}
class _DescriptionEventsState extends State<DescriptionEvents> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Finished",
                        style:
                        TextStyle(color: Colors.white, fontSize: 20),
                      ),
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
                                "${widget.events.matchHometeamScore}-${widget.events.matchAwayteamScore}"),
                          ),
                          Text(
                              widget.events.matchAwayteamName.toString(),
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis)),
                          Image.network(
                            widget.events.teamAwayBadge.toString(),
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  )
                      : Column(
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
                              child: Text(widget.events.matchTime.toString())),
                          Text(
                              widget.events.matchAwayteamName.toString(),
                              style: TextStyle(
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

                ],
              ),
            ),

            Center(
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),

            // Add the TabBarView to display the content for each tab

          ],
        ),
      ),
    );
  }

  Widget card(Events events) {
    return ListView.builder(
      shrinkWrap: true,
      reverse: true,
      itemCount: events.cards!.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(events.cards![index].homeFault.toString()),
                ),
              ],
            ),
            Text(events.cards![index].time.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(events.cards![index].awayFault.toString()),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
