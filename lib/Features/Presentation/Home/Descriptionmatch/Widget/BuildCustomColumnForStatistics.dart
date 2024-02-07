import 'package:flutter/material.dart';
import 'package:sports/Features/Presentation/Home/Descriptionmatch/Widget/BuildSliderForStatistics.dart';

class CustomColumnForStatistics extends StatelessWidget {
   CustomColumnForStatistics({super.key
   ,required this.value1,
     required this.value2,
     required this.num1,
     required this.num2,
     required this.status
   });
  double value1; double value2; String num1; String num2; String status;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${num1}"),
            Text("${status}"),
            Text("${num2}"),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: BuildSliderForStatistics(value:  value1,activeColor:  Colors.lightBlueAccent),
            ),
            Expanded(
              child: BuildSliderForStatistics(value:  value2,activeColor:  Colors.tealAccent),
            ),
          ],
        )
      ],
    );
  }
}
