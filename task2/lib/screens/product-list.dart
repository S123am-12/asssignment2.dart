import 'package:flutter/material.dart';
import 'package:task2/model/product.dart';
import 'product_detail_screen.dart';
import 'producttile.dart';
class ProductList extends StatelessWidget {
   ProductList({super.key});

final List<Product> products = [
    Product(
      title: 'Lifeboy',
      description: 'This is by unilivers,kills 99.99% of germs',
      price: 100.0,
      imageUrl: 'https://e7.pngegg.com/pngimages/27/496/png-clipart-soap-shower-gel-cleanliness-safeguard-soap-miscellaneous-cream.png',
    ),
    Product(
      title: 'dove',
      description: 'for smooth and healthy hair',
      price: 500.0,
      imageUrl: 'https://i.pinimg.com/originals/f2/7f/14/f27f1478938591e46bad4bf5821b9141.png',
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}