import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage("Assets/Images/studio-latin-guy-kicking-athlete.jpg"),fit: BoxFit.fill)
          ),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 40,left: 30),
          child: SizedBox(
              height: 50,
              child: Text(textAlign: TextAlign.center,"football, game in which two teams of 11 players, using any part of their bodies except their hands and arms",style: TextStyle(color: Colors.black54,fontSize: 16),)),
        )
      ],
    );
  }
}
