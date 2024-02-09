import 'package:flutter/material.dart';

class MyHome extends StatelessWidget{
  const MyHome({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text('เมืองโบราณ สมุทรปราการ',
            style: TextStyle(fontSize: 30.0),
            ),
          ),
          Container(
            child: Image.asset(
              'img/6F957565-B29C-4BD4-B8DA-0E609A2EC35D.jpg',
              width: 400.0),
          ),
          Container(
            child: Image.asset(
              'img/jpg.jpg',
              width: 400.0,
              ),
          ),
          Container(
            child: Image.asset(
              'img/P03006201_1.jpg',
              width: 400.0,
              ),
          ),
          Container(
            child: Image.asset(
              'img/01-001.JPG',
              width: 400.0,
              ),
          )
        ],
      ),
    );
  }
}