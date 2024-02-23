import 'package:flutter/material.dart';
import 'package:flutter_login_1/login_screen.dart';
import 'package:flutter_login_1/home_screen.dart';

class TabBarMenuApp extends StatelessWidget {
  const TabBarMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
      appBar: AppBar(
        title: Text('Yoooo'),
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.contact_mail)),
            Tab(icon: Icon(Icons.person)),
          ],
      ),
      ),
      body: TabBarView(
        children: [
          HomeScreen(),
          Icon(Icons.contact_mail),
          LoginScreen()
          ],
        ),
      )
    );
    
  }
}