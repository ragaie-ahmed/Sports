import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:sports/Features/Domain/Team.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/Description.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/LineUp.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/Statistics.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Screens/card.dart';
import 'package:sports/Features/Presentation/Home/Screens/Leagues/Screens/Standing.dart';

class BodyTeam extends StatelessWidget {
   BodyTeam({super.key,required this.id});
    String id;
  @override
  Widget build(BuildContext context) {
    return Standing(id: id);
  }
}
