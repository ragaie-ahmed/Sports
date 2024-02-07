
import 'package:flutter/material.dart';
import 'package:sports/Features/Domain/Events.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Widget/BuildCustomColumnForStatistics.dart';

class StatisticsHome extends StatelessWidget {
   StatisticsHome({super.key,required this.events});
Events events;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: events.statistics!.length,
      itemBuilder: (context, index) {
        String homeString = events.statistics![index].home.toString().replaceAll('%', '');
        String awayString = events.statistics![index].away.toString().replaceAll('%', '');

        double n1 = double.tryParse(homeString) ?? 0;
        double n2 = double.tryParse(awayString) ?? 0;

        String eventType = events.statistics![index].type.toString();

        return Column(
          children: [
            SizedBox(height: 15,),
            if(events.statistics![index].type=="Throw In")
              Card(
                child:  CustomColumnForStatistics(value1:  n1,value2:  n2,num1:  homeString, num2: awayString,
                   status:  events.statistics![index].type.toString()),
              ),
            if(events.statistics![index].type=="Free Kick")
              Card(
                child:   CustomColumnForStatistics(value1:  n1,value2:  n2,num1:  homeString, num2: awayString,
                    status:  events.statistics![index].type.toString()),
              ),
            if(events.statistics![index].type=="Goal Kick")
              Card(
                child: CustomColumnForStatistics(value1:  n1,value2:  n2,num1:  homeString, num2: awayString,
                    status:  events.statistics![index].type.toString()),
              ),
            if(events.statistics![index].type=="Substitution")
              Card(
                child:  CustomColumnForStatistics(value1:  n1,value2:  n2,num1:  homeString, num2: awayString,
                    status:  events.statistics![index].type.toString()),
              ),
            if(events.statistics![index].type=="On Target")
              Card(
                child:   CustomColumnForStatistics(value1:  n1,value2:  n2,num1:  homeString, num2: awayString,
                    status:  events.statistics![index].type.toString()),
              ),
            if(events.statistics![index].type=="Shots Total")
              Card(
                child:  CustomColumnForStatistics(value1:  n1,value2:  n2,num1:  homeString, num2: awayString,
                    status:  events.statistics![index].type.toString()),
              ),
            if(events.statistics![index].type=="Shots On Goal")
              Card(
                child: CustomColumnForStatistics(value1:  n1,value2:  n2,num1:  homeString, num2: awayString,
                    status:  events.statistics![index].type.toString()),
              ),         ],
        );
      },
    );
  }
}
