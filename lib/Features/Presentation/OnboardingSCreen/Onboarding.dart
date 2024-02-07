
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sports/Features/Presentation/Home/Screens/News/NewsPage.dart';
import 'package:sports/Features/Presentation/OnboardingSCreen/Screen1.dart';
import 'package:sports/Features/Presentation/OnboardingSCreen/Screen2.dart';
import 'package:sports/Features/Presentation/OnboardingSCreen/Screen3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController controllerPage = PageController();
  int currentPage = 0;
  int count = 3;
  List<Widget> Screens = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: PageView.builder(
              controller: controllerPage,
              itemCount: Screens.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Screens[index];
              },
            ),
          ),
          SizedBox(height: 50),
          SmoothPageIndicator(
            controller: controllerPage,
            count: count,
            effect: WormEffect(),
            onDotClicked: (index) {},
          ),
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: currentPage == count - 1,
        child: BottomAppBar(
          color: Colors.white,
          child: MaterialButton(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none
            ),
            color: Colors.indigo,

            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return NewPage();
              },));

            },
            child: Text('Get Started',style: TextStyle(
              color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}
