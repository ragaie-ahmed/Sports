
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sports/Features/Domain/Events.dart';

class BuildSubstituationEvent extends StatelessWidget {
  BuildSubstituationEvent({super.key,required this.event});
  Events event;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: event.substitutions!.home!.map((element){
               return Text("ahmed");
            }).toList(),
          ),
        ),
        Expanded(
          child: Column(
            children: event.substitutions!.away!.map((element){
               return Text("gamal");
            }).toList(),
          ),
        ),
      ],
    );
  }
}
