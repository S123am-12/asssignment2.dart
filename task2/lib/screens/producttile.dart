import 'package:flutter/material.dart';
import 'package:task2/model/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductTile({Key? key, required this.product, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.imageUrl, width: 50, height: 50),
      title: Text(product.title),
      subtitle: Text('\$${product.price}'),
      onTap: onTap,
    );
  }
}
