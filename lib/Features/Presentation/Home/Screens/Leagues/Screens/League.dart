import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sports/Features/Data/home_cubit.dart';
import 'package:sports/Features/Data/home_state.dart';
import 'package:sports/Features/Presentation/Home/Screens/Event/Events.dart';
import 'package:sports/Features/Presentation/Home/Screens/Leagues/Screens/Standing.dart';

class Leagues extends StatelessWidget {
  const Leagues({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Sports"),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          if (state is ErrorCountry) {
            showDialog(
              context: context,
              builder: (context) {
                return Text(state.error);
              },
            );
          } else if (state is LoadingCountry) {
            return Container(
              height: MediaQuery.of(context).size.width/3,
              child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: 10,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            
                          },
                          child: Column(
                            children: [
                              CircleAvatar(radius: 30,
                              backgroundImage: NetworkImage("${cubit.listCountry[index].leagueLogo}"),),
                              SizedBox(height: 5,),
                              SizedBox(
                                  width: 80,
                                  child: Text("${cubit.listCountry[index].leagueName}",style: TextStyle(overflow: TextOverflow.ellipsis),))
                            ],
                          )
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
