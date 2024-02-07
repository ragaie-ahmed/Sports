import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sports/Features/Domain/Standing.dart';

class StandingContent extends StatelessWidget {
  StandingContent({super.key, required this.standing});

  Standing standing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
                width: 25,
                child: Text(
                  standing.overallLeaguePosition.toString(),
                  style: TextStyle(),
                )),
            SizedBox(width: 25,
            child: CircleAvatar(
              backgroundImage: NetworkImage(standing.teamBadge.toString(),scale: 100)
            ),
            ),
            SizedBox(width: 5,),
            SizedBox(
                width: 70,
                child: Text(standing.teamName.toString(),
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis))),
            SizedBox(
                width: 30,
                child: Text(
                  standing.overallLeaguePayed.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                )),
            SizedBox(
                width: 30,
                child: Text(
                  standing.overallLeagueW.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.green),
                )),
            SizedBox(
                width: 30,
                child: Text(
                  standing.overallLeagueD.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.red),
                )),
            SizedBox(
                width: 30,
                child: Text(
                  standing.overallLeagueL.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.indigo),
                )),
            SizedBox(
                width: 30,
                child: Text(
                  standing.overallLeagueGF.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )),
            SizedBox(
                width: 30,
                child: Text(
                  standing.overallLeagueGA.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                )),
            SizedBox(
                width: 30,
                child: Text(
                  standing.overallLeaguePTS.toString(),
                  style: TextStyle(fontSize: 20),
                )),
          ],
        )
      ],
    );
  }
}
