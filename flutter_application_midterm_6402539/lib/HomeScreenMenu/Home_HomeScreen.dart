import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Products {
  final int id;
  final String type;
  final String name;
  final int price;
  final String image;

  Products({
    required this.id,
    required this.type,
    required this.name,
    required this.price,
    required this.image,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}




class Home_HomeScreen extends StatefulWidget {
 @override
  State<Home_HomeScreen> createState() => HomeState();
}
  class HomeState extends State <Home_HomeScreen> {
  List<Products> products = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/products.json'); 
    final data = await json.decode(response);
    setState(() {
      products =
          List<Products>.from(data['products'].map((i) => Products.fromJson(i)));
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) {
          return Card(
              child: Column(children: [
            Image.network(products[i].image),
            Text(products[i].name),
            Text(products[i].price.toString())
          ]));
        },
      ),
    );
  }
}

