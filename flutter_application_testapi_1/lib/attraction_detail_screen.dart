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
        Uri.parse('https://api.jsonbin.io/v3/qs/65f3c31bdc74654018b320d6'));
    final data = json.decode(response.body);
    if (data != null && data['record'] != null && data['record']['products'] != null) {
      final products = data['record']['products'];
      final product = products.firstWhere((product) => product['id'] == widget.id, orElse: () => null);
      setState(() {
        _attractionDetail = product;
      });
    }
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
                    const SizedBox(
                      height: 8,
                    ),
                    Text(_attractionDetail!['type']),
                    Image.network(
                        _attractionDetail!['image']),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      _attractionDetail!['name'],
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                   Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        _attractionDetail!['price'].toString(),
                        style: const TextStyle(
                          fontSize: 24, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                )));
  }
}
