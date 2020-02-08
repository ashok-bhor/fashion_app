import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:ab_shopapp/components/hp_horizontal_listView.dart';
import 'package:ab_shopapp/components/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel=Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
        ],
        autoplay: false,
        /*animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),*/
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 1.0,
),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //Drawer Header Part
            UserAccountsDrawerHeader(
              accountName: Text("Ashok Bhor"),
              accountEmail: Text("ashok@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            //body

          InkWell(
            onTap: (){},
            child:  ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home,color:Colors.red),
            ),
          ),
            InkWell(
              onTap: (){},
              child:  ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child:  ListTile(
                title: Text("My Order"),
                leading: Icon(Icons.shopping_basket,color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child:  ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(Icons.shopping_cart,color:Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child:  ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite,color:Colors.red),
              ),
            ),
            Divider(
              color: Colors.blue,
            ),
            InkWell(
              onTap: (){},
              child:  ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings,color:Colors.blue),
              ),
            ),
            InkWell(
              onTap: (){},
              child:  ListTile(
                title: Text("About"),
                leading: Icon(Icons.help,color:Colors.blue),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories"),
           //Horizontal List View begins here
          ),
          HorizontalList(),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Recent Products"),
          ),

          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
