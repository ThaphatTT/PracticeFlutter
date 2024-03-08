import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

import 'package:flutter_application_midterm_6402539/tabMenu.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds : 3),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const TabMenu())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Container(
          margin: EdgeInsets.fromLTRB(0,350,0,0),
          child: Center(
            child: Image.asset('assets/img/dit-logo.png',width: 300.0,),
          )
        ),
        Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dot(index: 0),
                SizedBox(width: 16),
                Dot(index: 1),
                SizedBox(width: 16),
                Dot(index: 2),
              ],
            ),
      ),
        ),
      ],
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final int index;

  const Dot({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 3),
      tween: Tween<double>(begin: 0, end: 5 * 3.14),
      builder: (context, double value, child) {
        return Transform.translate(
          offset: Offset(
            0,
            sin(value + (index * 0.5)) * 5,
          ),
          child: Container(
            width: 10,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromRGBO(184, 16, 16, 1),
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }
}