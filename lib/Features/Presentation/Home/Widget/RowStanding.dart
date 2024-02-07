import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowStanding extends StatelessWidget {
  const RowStanding({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        SizedBox(width: 110,child: Text("Team Name",style: TextStyle(color: Colors.teal,fontSize: 15),)) ,SizedBox(width: 15,),
        SizedBox(width: 30,child: Text("pl",style: TextStyle(fontSize: 20,color: Colors.purple),)),
        SizedBox(width: 30,child: Text("W",style: TextStyle(fontSize: 20,color: Colors.green),)),
        SizedBox(width: 30,child: Text("D",style: TextStyle(fontSize: 20,color: Colors.red),)),
        SizedBox(width: 30,child: Text("L",style: TextStyle(fontSize: 20,color: Colors.indigo),)),
        SizedBox(width: 30,child: Text("Gf",style: TextStyle(fontSize: 20,color: Colors.blue),)),
        SizedBox(width: 30,child: Text("Ga",style: TextStyle(fontSize: 20,color: Colors.teal),)),
        SizedBox(width: 30,child: Text("Pls",style: TextStyle(fontSize: 20,color: Colors.red),)),
      ],
    );
  }
}
