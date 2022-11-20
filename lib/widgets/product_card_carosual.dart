import 'package:eat_now/models/product_model.dart';
import 'package:eat_now/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductCardCarosual extends StatelessWidget {
  const ProductCardCarosual({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductCard(product: products[index]),
            );
          }),
    );
  }
}
