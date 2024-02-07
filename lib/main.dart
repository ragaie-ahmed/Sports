import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sports/Core/BlocObserv.dart';
import 'package:flutter/material.dart';
import 'package:sports/Features/Data/Events/events_cubit.dart';
import 'package:sports/Features/Data/Standing/standing_cubit.dart';
import 'package:sports/Features/Data/Team/team_cubit.dart';
import 'package:sports/Features/Data/home_cubit.dart';

import 'package:sports/Features/Presentation/Home/Screens/Event/Events.dart';
import 'package:sports/Features/Presentation/Home/Screens/Leagues/Screens/League.dart';
import 'package:sports/Features/Presentation/Home/Screens/Leagues/Screens/Standing.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit()..getCountry(),
        ),
        BlocProvider(
          create: (context) => StandingCubit(),
        ),
        BlocProvider(
          create: (context) => EventsCubit(),
        ),
        BlocProvider(
          create: (context) => TeamCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Events(),
      ),
    );
  }
}
