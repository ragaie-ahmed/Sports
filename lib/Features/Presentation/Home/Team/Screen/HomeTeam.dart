
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports/Features/Data/Team/team_cubit.dart';
import 'package:sports/Features/Data/Team/team_state.dart';
import 'package:sports/Features/Presentation/Home/Screens/Leagues/Screens/Standing.dart';
import 'package:sports/Features/Presentation/Home/Team/Screen/TeamSquad.dart';
import 'package:sports/Features/Presentation/Home/Team/Widget/Appbar.dart';
import 'package:sports/Features/Presentation/Home/Team/Widget/bodyTeam.dart';

class HomeTeam extends StatefulWidget {
   HomeTeam({super.key, required this.id,required this.idLeague});

  final String id;
  String idLeague;

  @override
  State<HomeTeam> createState() => _HomeTeamState();
}

class _HomeTeamState extends State<HomeTeam> {
  @override
  void initState() {
    TeamCubit.get(context).getTeam(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Event'),
              Tab(text: 'description'),
              Tab(text: 'LineUp'),
            ],
          ),
        ),
        body: BlocBuilder<TeamCubit, TeamState>(
          builder: (context, state) {
            var cubit = TeamCubit.get(context);
            if (state is SuccessTeam) {
              return
                    TabBarView(children: [
                Standing(id: widget.idLeague)  ,
                    TeamSquad(),
                    Text("3")
                  ]);

            } else if (state is ErrorTeam) {
              return SnackBar(content: Text(state.error));
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
