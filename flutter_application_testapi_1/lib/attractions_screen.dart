import 'package:flutter/material.dart';

// new import
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_application_testapi_1/attraction_detail_screen.dart';

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
        await http.get(Uri.parse('https://api.jsonbin.io/v3/qs/65f3c31bdc74654018b320d6'));
        final data = json.decode(response.body);
    setState(() {
      _attractions = data['record']['products'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Thaphat 6402539'),
        ),
        body: ListView.builder(
          itemCount: _attractions.length,
          itemBuilder: (context, index) {
            final product = _attractions[index];
            return ListTile(
              leading: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.network(product['image']),
              ),
              title: Text(product['name']),
              subtitle: Text(
                product['type'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AttractionDetailPage(id: product['id'])));
              },
            );
          },
        ));
  }

}

