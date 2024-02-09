import 'package:flutter/material.dart';

// new Import
import 'package:flutter_suggest_place_1/HomeMain.dart';
import 'package:flutter_suggest_place_1/DescriptionPlace.dart';
import 'package:flutter_suggest_place_1/Suggestion.dart';
import 'package:flutter_suggest_place_1/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home : DefaultTabController(
        length: 4,
        child : Scaffold(
          appBar: AppBar(
            title: const Text('6402539'),
            backgroundColor: Colors.red[300],
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text : 'Home'
                ),
                Tab(
                  icon: Icon(Icons.place),
                  text : 'Describe'
                ),
                Tab(
                  icon: Icon(Icons.recommend),
                  text : 'Suggest'
                ),
                Tab(
                  icon: Icon(Icons.contact_page),
                  text : 'Contact'
                ),
              ],
              ),
          ),
          body : const TabBarView( children: [
            MyHome(),
            DescriptionPlace(),
            SuggestionPlace(),
            ContactMe(),
          ],
          )
        )
      )
    );
  }
}