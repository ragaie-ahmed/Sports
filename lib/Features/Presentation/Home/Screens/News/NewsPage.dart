
import 'package:flutter/material.dart';
import 'package:sports/Features/Presentation/Home/Screens/News/Screen1.dart';
import 'package:sports/Features/Presentation/Home/Screens/News/Screen2.dart';
import 'package:sports/Features/Presentation/Home/Screens/News/Screen3.dart';
import 'package:sports/Features/Presentation/Home/Screens/News/Screen4.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Awesome App Bar'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
              Tab(text: 'Tab 4'),
            ],
            isScrollable: true, // Set to true if you have many tabs
          ),
        ),
        body: TabBarView(
          children: [
           Screen1(),Screen2(),Screen3(),Screen4(),
          ],
        ),
      ),
    );
  }
}


