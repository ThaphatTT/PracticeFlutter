import 'package:flutter/material.dart';

// new import
import 'dart:convert';
import 'package:http/http.dart' as http;
class AttractionsPage extends StatefulWidget {
  const AttractionsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AttractionsPageState();
  }
}

class _AttractionsPageState extends State<AttractionsPage> {
  List<dynamic> _attractions = [];

  @override
  void initState() {
    super.initState();
    _fetchAttractions();
  }

  Future<void> _fetchAttractions() async {
    final response =
        await http.get(Uri.parse('https://www.melivecode.com/api/attractions'));
    setState(() {
      _attractions = json.decode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Karn 6090059'),
        ),
        body: ListView.builder(
          itemCount: _attractions.length,
          itemBuilder: (context, index) {
            final attraction = _attractions[index];
            return ListTile(
              title: Text(attraction['name']),
            );
          },
        ));
  }
}

