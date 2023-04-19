import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetail extends StatelessWidget {

  final Product product;

  ProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children:
            <Widget>[ListView(children: [
            Column(children: <Widget>[
            Text(product.title),
        Card(color: Colors.teal,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 3,
          child: Row(children: <Widget>[
            Text('${product.rating.toString}'),
            Icon(Icons.star),
          ]),)
        ],)
      ],)


    )]
    ,
    )
    )
    ,
    );
  }
}