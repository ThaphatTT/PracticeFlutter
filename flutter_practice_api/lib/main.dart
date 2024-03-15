import 'package:flutter/material.dart';
import 'package:flutter_practice_api/attractions_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 245, 86, 86),
              foregroundColor: Colors.white)),
      home: const AttractionsPage(),
    );
  }

}