import 'package:flutter/material.dart';

class CustomRowForDescription extends StatelessWidget {
   CustomRowForDescription({super.key,required this.name1,required this.name2});
  String name1; String name2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            name1,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            width: 30,
          ),
          SizedBox(
              width: 130,
              child: Text(
                  maxLines: 2,
                  name2,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis))),
        ],
      ),
    );
  }
}
