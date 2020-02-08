import 'package:flutter/material.dart';
import 'package:ab_shopapp/screens/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
          return Single_product(
            productName: productList[index]['name'],
            productPic: productList[index]['picture'],
            productOldPrice: productList[index]['oldPrice'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final productName;
  final productPic;
  final productOldPrice;
  final productPrice;

  Single_product(
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
