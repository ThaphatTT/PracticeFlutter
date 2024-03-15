import 'package:flutter/material.dart';

// new import
import 'package:http/http.dart' as http;
import 'dart:convert';

class AttractionDetailPage extends StatefulWidget {
  final int id;
  const AttractionDetailPage({super.key, required this.id});


  @override
  State<AttractionDetailPage> createState() => _AttractionDetailPageState();
}

class _AttractionDetailPageState extends State<AttractionDetailPage> {
  Map<String, dynamic>? _attractionDetail;


  @override
  void initState() {
    super.initState();
    _fetchAttractionDetail();
  }

  Future<void> _fetchAttractionDetail() async {
    final response = await http.get(
        Uri.parse('https://www.melivecode.com/api/attractions/${widget.id}'));
    setState(() {
      _attractionDetail = json.decode(response.body);
    });
  }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Detail')),
        body: _attractionDetail == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        _attractionDetail!['attraction']!['coverimage']),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      _attractionDetail!['attraction']!['name'],
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(_attractionDetail!['attraction']!['detail'])
                  ],
                )));
  }
}
