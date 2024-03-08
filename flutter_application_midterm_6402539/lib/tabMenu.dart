import 'package:flutter/material.dart';


class TabMenu extends StatelessWidget {
  const TabMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.abc_outlined))
              ],
            ),
          ),
        ),
      ),
    );
  }
}