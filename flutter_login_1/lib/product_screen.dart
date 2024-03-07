import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Product {
  final int id;
  final String type;
  final String name;
  final int price;
  final String image;

  Product({
    required this.id,
    required this.type,
    required this.name,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
  
}


class ProductScreen extends StatefulWidget {
  @override
  State<ProductScreen> createState() => ProductState();
}

class ProductState extends State <ProductScreen> {
  List<Product> products = [];

Future<void> readJson() async {
  final String response =
      await rootBundle.loadString('assets/products.json'); 
  final data = await json.decode(response);
  setState(() {
    products =
        List<Product>.from(data['products'].map((i) => Product.fromJson(i)));
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
            Text(products[i].type),
            Text(products[i].price.toString())
          ]));
        },
      ),
    );
  }
}
