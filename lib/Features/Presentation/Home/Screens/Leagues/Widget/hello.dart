import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class TeamsLineups extends StatelessWidget {
  final List<dynamic> lineups;

  const TeamsLineups({super.key, required this.lineups});

  @override
  Widget build(BuildContext context) {
    List<String> teamOnePlan = lineups[0].formation.split("-");
    Iterable<String> teamTwoPlan = lineups[1].formation.split("-").reversed;
    List<String> teamOnePlayers = lineups[0].startXI;
    Iterable<String> teamTwoPlayers = lineups[1].startXI.reversed;

    int lineOneNumber = 0;
    int lineTwoNumber = -1;

    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor:
                      HexColor("#${lineups[0].team.colors.player.primary}"),
                      child: Text(
                      "  teamOnePlayers[0].number.toString()",
                        style: TextStyle(
                            color: HexColor(
                                "#${lineups[0].team.colors.player.number}")),
                      ),
                    ),
                  ),
                  Text(
                    "teamOnePlayers[0].name",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) =>
                const SizedBox(height: 10),
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                      int.parse(teamOnePlan[index]),
                          (_) {
                        lineOneNumber++;

                        return Expanded(
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: HexColor(
                                      "#${lineups[0].team.colors.player.primary}"),
                                  child: Text(
                                  "  teamOnePlayers[lineOneNumber].number"
                                        .toString(),
                                    style: TextStyle(
                                      color: HexColor(
                                          "#${lineups[0].team.colors.player.number}"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height:2),
                              Text(
                            "",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                itemCount: teamOnePlan.length,
              ),
            ],
          ),
        ),
        // const SizedBox(height: 80),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) =>
                const SizedBox(height: 10),
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                      int.parse(teamTwoPlan.elementAt(index)),
                          (_) {
                        lineTwoNumber++;

                        return Expanded(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: HexColor(
                                    "#${lineups[1].team.colors.player.primary}",
                                  ),
                                  child: Text(
                                   "",
                                    style: TextStyle(
                                        color: HexColor(
                                            "#${lineups[1].team.colors.player.number}")),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                        "",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                itemCount: teamTwoPlan.length,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor:
                      HexColor("#${lineups[1].team.colors.player.primary}"),
                      child: Text(
                  "",
                        style: TextStyle(
                            color: HexColor(
                                "#${lineups[1].team.colors.player.number}")),
                      ),
                    ),
                  ),
                  Text(
                  "",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}