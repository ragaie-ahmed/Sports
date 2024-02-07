import 'package:flutter/material.dart';

class AppBarTeam extends StatelessWidget {
  const AppBarTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        bottom: TabBar(
          tabs: [
            Tab(text: 'Event'),
            Tab(text: 'description'),
            Tab(text: 'LineUp'),
            Tab(text: 'Statistics'),
            Tab(text: 'Standing'),
          ],
        ),
    );
  }
}
