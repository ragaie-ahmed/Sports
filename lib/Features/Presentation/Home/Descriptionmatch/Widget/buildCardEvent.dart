import 'package:flutter/material.dart';
import 'package:sports/Features/Domain/Events.dart';

class BuildCardEvents extends StatelessWidget {
   BuildCardEvents({super.key, required this.event});
   Cards event;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 20,),
            Expanded(
              child: Row(
                children: [
                  Text(event.homeFault.toString()),
                  if (event.card == "yellow card" && event.homeFault!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset(
                        "Assets/Images/Yellow_card.svg.png",
                        height: 20,
                      ),
                    ),
                ],
              ),
            ),
            Center(
              child: Text(event.time.toString()),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(event.awayFault.toString()),
                  if (event.card == "yellow card" && event.awayFault!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset(
                        "Assets/Images/Yellow_card.svg.png",
                        height: 20,
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(width: 20,),


          ],
        ),
        Divider(),
      ],
    );
  }
}
