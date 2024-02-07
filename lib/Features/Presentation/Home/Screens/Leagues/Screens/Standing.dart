import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports/Features/Data/Standing/standing_cubit.dart';
import 'package:sports/Features/Data/Standing/standing_state.dart';
import 'package:sports/Features/Data/home_cubit.dart';
import 'package:sports/Features/Presentation/Home/Screens/Leagues/Screens/StandingContent.dart';
import 'package:sports/Features/Presentation/Home/Widget/RowStanding.dart';

class Standing extends StatefulWidget {
  Standing({super.key,required this.id });
final String id;
  @override
  State<Standing> createState() => _StandingState();
}

class _StandingState extends State<Standing> {


  @override
  void initState() {
StandingCubit.get(context).getStanding(widget.id);
    super.initState();
  }
  Widget build(BuildContext context) {
    return

      BlocBuilder<StandingCubit, StandingState>(
        builder: (context, state) {
          var cubit = StandingCubit.get(context);
             if(state  is LoadingStanding){
       return ListView(
         shrinkWrap: true,
         padding: EdgeInsets.only(top: 100,left: 30),
         children: [
          RowStanding(),
           Divider( ),
           ListView.builder(
             itemCount:cubit.listStaing.length,
             shrinkWrap: true,
             physics: BouncingScrollPhysics(),
             itemBuilder: (context, index) {
               return StandingContent(standing: cubit.listStaing[index],);
             },)
         ],
       );
             }

           else if( state is ErrorStanding){
             return Text(state.error);

             }
           return Center(child: Text("Loading.."));

        },
      );

  }
}
