import 'package:flutter/material.dart';
// new import
import 'dart:async';
import 'package:flutter_login_1/login_screen.dart';

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
        MaterialPageRoute(builder: (_) => const LoginScreen())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Thaphat Meechaitana 6402539', 
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          )), 
        ),
    );
  }
}