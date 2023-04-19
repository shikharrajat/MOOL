import 'package:flutter/material.dart';
import 'package:mool/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import '../size_config.dart';


class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  static const routeName = '/home';
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final searchquery = TextEditingController();
  var discountlist = ['1', '2', '3', '4', '5'];
  var _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer() ,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        title: Container(
          width: 300,
          height: 40,
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
           maxLines: 3,
            controller: searchquery,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic,fontSize: 20),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              border:  OutlineInputBorder(
                borderSide: BorderSide(width: 5),
              ),

              filled: true,
              fillColor: Colors.orange[50],
              hintText: 'Search',
              prefixIcon:Icon(Icons.search),

             contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 3 ),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],

        bottom: AppBar(toolbarHeight: 30,
            elevation: 1,backgroundColor: Colors.orange[300],
            leading: Icon(Icons.location_on_outlined,color: Colors.black),
            title: Text('Deliver to Shikhar-Kota 324001' ,style: TextStyle(color: Colors.black,fontSize: 15,),),
      ),),
      body: Column(
        children: [

          Row(children: [
            SizedBox(width: 20),
            SizedBox(
              width: 300,
              height: 40,
            ),
          ]),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hi Shikhar,',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.orange[500]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (discountlist == null) {
                  return CircularProgressIndicator();
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 340,
                        height: 200,
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: ListTile(
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          tileColor: Colors.orange,
                          title: ClipRRect(
                            child: InkWell(
                              onTap: () => ProductDetail(),
                              child: Text(""),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: discountlist == null ? 0 : discountlist.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 30,
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 260,
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              childAspectRatio: 1.5,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.yellow),
                  child: Text(""),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.green,
                  ),
                  child: Text(""),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.yellow,
                  ),
                  child: Text(""),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.green,
                  ),
                  child: Text(""),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.category),
            icon: Icon(Icons.category_outlined),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon:  Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
        selectedItemColor: Colors.orange[800],
        unselectedItemColor: Colors.orange[600],
        backgroundColor: Colors.orange[500],
        elevation: 10,
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
      ),
    );
  }
}
