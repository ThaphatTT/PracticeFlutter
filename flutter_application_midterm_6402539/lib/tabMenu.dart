import 'package:flutter/material.dart';

// import HomeScreenMenu
import 'package:flutter_application_midterm_6402539/HomeScreenMenu/Home_HomeScreen.dart';

import 'package:flutter_application_midterm_6402539/HomeScreenMenu/Favourite_HomeScreen.dart';

import 'package:flutter_application_midterm_6402539/HomeScreenMenu/Contact_HomeScreen.dart';

import 'package:flutter_application_midterm_6402539/HomeScreenMenu/Profile_HomeScreen.dart';

class TabMenu extends StatelessWidget {
  const TabMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
      appBar: AppBar(
        title: Text('6402539 Thaphat Meechaitana'),
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.favorite)),
            Tab(icon: Icon(Icons.contact_mail)),
            Tab(icon: Icon(Icons.person)),
          ],
      ),
      ),
      body: TabBarView(children: [
        Home_HomeScreen(),
       Favourite_HomeScreen(),
        Contact_HomeScreen(),
        Profile_HomeScreen()
      ]),
      )
    );
  }
}