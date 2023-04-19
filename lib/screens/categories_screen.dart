import 'package:flutter/material.dart';
import 'package:mool/screens/home_screen.dart';
import 'package:mool/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import '../size_config.dart';
import '../Providers/products.dart';
import '../widgets/Product_card.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  static const routeName = '/categories';
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var _selectedindex = 2;

  void _onItemTapped(int index) {

    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products =  productsData.items;
    return Scaffold(
      drawer: Drawer() ,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        title: Text('Categories',style: Theme.of(context).textTheme.bodyMedium,),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body:GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          // builder: (c) => products[i],
          value: products[i],
          child: ProductCard(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),



    );
  }
}