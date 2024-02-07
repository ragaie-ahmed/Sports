import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports/Features/Data/Team/team_cubit.dart';
import 'package:sports/Features/Data/Team/team_state.dart';
import 'package:sports/Features/Domain/Team.dart';

class TeamSquad extends StatefulWidget {
  TeamSquad({
    Key? key,
  }) : super(key: key);

  @override
  State<TeamSquad> createState() => _TeamSquadState();
}

class _TeamSquadState extends State<TeamSquad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<TeamCubit, TeamState>(
          builder: (context, state) {
            if (state is SuccessTeam) {
              var cubit = TeamCubit.get(context);
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: cubit.listTeam.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var currentPlayerType =
                      cubit.listTeam[index].players![index].playerType;
                  var currentPlayerName =
                      cubit.listTeam[index].players![index].playerName;

                  return Column(
                    children: [
                      Text("$currentPlayerType"),
                      Card(
                        child: Text("$currentPlayerName"),
                      ),
                    ],
                  );
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ],
    );
  }
}
