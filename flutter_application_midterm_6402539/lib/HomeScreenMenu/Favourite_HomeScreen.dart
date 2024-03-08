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




class Favourite_HomeScreen extends StatefulWidget {
 @override
  State<Favourite_HomeScreen> createState() => HomeState();
}
  class HomeState extends State <Favourite_HomeScreen> {
  List<Products> products = [];
  Products? product;

 Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/products.json'); 
    final data = await json.decode(response);
    setState(() {
      products = List<Products>.from(data['products'].map((i) => Products.fromJson(i)));
      product = products.firstWhere((product) => product.id == 1); 
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
    body: product == null 
      ? CircularProgressIndicator() 
      : Card(
          child: Column(children: [
            Image.network(product!.image),
            Text(product!.name),
            Text(product!.price.toString())
          ])
        ),
  );
}
}

