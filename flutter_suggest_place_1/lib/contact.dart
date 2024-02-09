import 'package:flutter/material.dart';


class ContactMe extends StatelessWidget{
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          margin : EdgeInsets.all(8),
          child: Image.asset(
            'img/Seal_Samut_Prakan.png',
            width: 300.0,
            ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Contact',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
        ),
        Container(
          margin : EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Email : thaphat.m64@rsu,ac,th'),
          )
        ),
        Container(
          margin : EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Name : Thaphat Meechaitana'),
          )
        ),
        Container(
          margin : EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Student Code : 6402539'),
          )
        ),
      ],
    );
  } 
}