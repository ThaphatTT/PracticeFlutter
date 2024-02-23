import 'package:flutter/material.dart';
// new import
import 'dart:async';
import 'package:flutter_login_1/login_screen.dart';
import 'dart:math';
import 'package:flutter_login_1/TabMenu.dart';

class SplashScreenState extends StatefulWidget {
  const SplashScreenState({super.key});

  @override
  State<SplashScreenState> createState() => _SplashScreenStateState();
}

class _SplashScreenStateState extends State<SplashScreenState> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds : 3),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const TabBarMenuApp())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        // Center(
        // child: const Text(
        //   'Thaphat Meechaitana 6402539', 
        //   style: TextStyle(
        //     fontSize: 24,
        //     fontWeight: FontWeight.bold
        //   )),
        // ),
        Container(
          margin: EdgeInsets.all(50),
          child: Image.asset('assets/img/LOGO-3-removebg-preview.png',width: 300.0,),
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
              color: Color.fromRGBO(0, 74, 173,1),
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }
}