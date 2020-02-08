import 'package:ab_shopapp/components/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ab_shopapp/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_newPrice;
  final product_detail_oldPrice;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_newPrice,
      this.product_detail_oldPrice,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
            child: Text("Fashapp")),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),

        ],
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("\$${widget.product_detail_oldPrice}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough))),
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_newPrice}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //Product Description will come here

          /*The first Buttons*/
          Row(
            children: <Widget>[
              //The size button
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Size"),
                        ),
                        Expanded(child: Icon(Icons.arrow_drop_down))
                      ],
                    )),
              ),
              //The Color button
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Color"),
                        ),
                        Expanded(child: Icon(Icons.arrow_drop_down))
                      ],
                    )),
              ),
              //The Quantity button
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Quantity"),
                        ),
                        Expanded(child: Icon(Icons.arrow_drop_down))
                      ],
                    )),
              ),
            ],
          ),

          //====== BUY FOOTER===========
          Row(
            children: <Widget>[
              /*-----------AB-Buy Button-----------*/
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy Now"),
                ),
              ),

              /*---------AB-Add to cart and favourite-----------*/
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite_border), onPressed: () {})
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Blandit turpis cursus in hac habitasse platea dictumst quisque. Velit laoreet id donec ultrices tincidunt arcu non sodales. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Consectetur adipiscing elit ut aliquam."),
          ),
          Divider(),
          
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child:Text("Product Name: ",style: TextStyle(color:Colors.grey),)
              ),
              Padding(padding: EdgeInsets.all(5),
              child:Text(widget.product_detail_name))
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child:Text("Product Brand: ",style: TextStyle(color:Colors.grey),)
              ),
              //======Pending===Ab- Remember to create the product brand
              Padding(padding: EdgeInsets.all(5),
                  child:Text("Brand X"))
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child:Text("Product Condition: ",style: TextStyle(color:Colors.grey),)
              ),
              //======Pending===Ab- Remember to create the product Condition
              Padding(
                padding:EdgeInsets.all(5),
                child:Text("New/User")
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Similar Products"),
          ),
          //=========Ab- Similar Product Section
          Container(
            height: 340.0,
            child: Similar_products(),
          )

        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 120,
      "price": 85
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/hills1.jpeg",
      "oldPrice": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/skt1.jpeg",
      "oldPrice": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/skt2.jpeg",
      "oldPrice": 100,
      "price": 50
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress2.jpeg",
      "oldPrice": 100,
      "price": 50
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_product(
            productName: productList[index]['name'],
            productPic: productList[index]['picture'],
            productOldPrice: productList[index]['oldPrice'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class Similar_single_product extends StatelessWidget {
  final productName;
  final productPic;
  final productOldPrice;
  final productPrice;

  Similar_single_product(
      {this.productName,
        this.productPic,
        this.productOldPrice,
        this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text("Hero_1"), //AB- Text inside is anything...it is the tag name
          child: Material(
              child: InkWell(
                onTap:()=>
                //here we are passing the values of product to the product details page
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context)=>new ProductDetails(
                      product_detail_name: productName,
                      product_detail_newPrice: productPrice,
                      product_detail_oldPrice: productOldPrice,
                      product_detail_picture: productPic,
                    ))),
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(productName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                          ),
                          Text("\$${productPrice}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16.0),),
                        ],
                      ),
                    ),
                    child: Image.asset(
                      productPic,
                      fit: BoxFit.cover,
                    )),
                // onTap: () {},
              ))),
    );
  }
}