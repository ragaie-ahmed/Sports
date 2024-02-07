import 'package:flutter/material.dart';

class BuildSliderForStatistics extends StatelessWidget {
   BuildSliderForStatistics({super.key,
   required this.value,
     required this.activeColor
   });
  double value; Color activeColor;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: SliderComponentShape.noThumb,
      ),
      child: Slider(
        activeColor: activeColor,
        min: 0,
        max: 40,
        value: value,
        onChanged: (value) {
          // Your onChanged logic here
        },
      ),
    );
  }
}
